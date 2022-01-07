
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ms_rb_ds; scalar_t__ ms_rb_color; scalar_t__ ms_fbo; } ;
typedef TYPE_1__ fft_t ;


 int GL_COLOR_ATTACHMENT0 ;
 int GL_DEPTH24_STENCIL8 ;
 int GL_DEPTH_STENCIL_ATTACHMENT ;
 int GL_FRAMEBUFFER ;
 scalar_t__ GL_FRAMEBUFFER_COMPLETE ;
 int GL_RENDERBUFFER ;
 int GL_RGBA8 ;
 int glBindFramebuffer (int ,scalar_t__) ;
 int glBindRenderbuffer (int ,scalar_t__) ;
 scalar_t__ glCheckFramebufferStatus (int ) ;
 int glDeleteFramebuffers (int,scalar_t__*) ;
 int glDeleteRenderbuffers (int,scalar_t__*) ;
 int glFramebufferRenderbuffer (int ,int ,int ,scalar_t__) ;
 int glGenFramebuffers (int,scalar_t__*) ;
 int glGenRenderbuffers (int,scalar_t__*) ;
 int glRenderbufferStorageMultisample (int ,unsigned int,int ,unsigned int,unsigned int) ;

void fft_init_multisample(fft_t *fft, unsigned width, unsigned height, unsigned samples)
{
   if (fft->ms_rb_color)
      glDeleteRenderbuffers(1, &fft->ms_rb_color);
   fft->ms_rb_color = 0;
   if (fft->ms_rb_ds)
      glDeleteRenderbuffers(1, &fft->ms_rb_ds);
   fft->ms_rb_ds = 0;
   if (fft->ms_fbo)
      glDeleteFramebuffers(1, &fft->ms_fbo);
   fft->ms_fbo = 0;

   if (samples > 1)
   {
      glGenRenderbuffers(1, &fft->ms_rb_color);
      glGenRenderbuffers(1, &fft->ms_rb_ds);
      glGenFramebuffers (1, &fft->ms_fbo);

      glBindRenderbuffer(GL_RENDERBUFFER, fft->ms_rb_color);
      glRenderbufferStorageMultisample(GL_RENDERBUFFER, samples,
            GL_RGBA8, width, height);
      glBindRenderbuffer(GL_RENDERBUFFER, fft->ms_rb_ds);
      glRenderbufferStorageMultisample(GL_RENDERBUFFER, samples,
            GL_DEPTH24_STENCIL8, width, height);
      glBindRenderbuffer(GL_RENDERBUFFER, 0);

      glBindFramebuffer(GL_FRAMEBUFFER, fft->ms_fbo);
      glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,
            GL_RENDERBUFFER, fft->ms_rb_color);
      glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT,
            GL_RENDERBUFFER, fft->ms_rb_ds);
      if (glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
         fft_init_multisample(fft, 0, 0, 0);
   }

   glBindFramebuffer(GL_FRAMEBUFFER, 0);
}
