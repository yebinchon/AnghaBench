
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct retro_hw_render_callback {scalar_t__ depth; scalar_t__ stencil; int bottom_left_origin; } ;
struct TYPE_4__ {int hw_render_enable; unsigned int hw_render_max_width; unsigned int hw_render_max_height; scalar_t__ hw_render_rb_ds; int hw_render_bottom_left; int hw_render_texture; int hw_render_fbo; } ;
typedef TYPE_1__ gl_core_t ;
typedef unsigned int GLint ;
typedef scalar_t__ GLenum ;


 int GL_COLOR_ATTACHMENT0 ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH24_STENCIL8 ;
 int GL_DEPTH_ATTACHMENT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_DEPTH_COMPONENT16 ;
 int GL_DEPTH_STENCIL_ATTACHMENT ;
 int GL_FRAMEBUFFER ;
 scalar_t__ GL_FRAMEBUFFER_COMPLETE ;
 int GL_MAX_RENDERBUFFER_SIZE ;
 int GL_MAX_TEXTURE_SIZE ;
 int GL_RENDERBUFFER ;
 int GL_RGBA8 ;
 int GL_STENCIL_BUFFER_BIT ;
 int GL_TEXTURE_2D ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,unsigned int,unsigned int) ;
 int glBindFramebuffer (int ,int ) ;
 int glBindRenderbuffer (int ,scalar_t__) ;
 int glBindTexture (int ,int ) ;
 scalar_t__ glCheckFramebufferStatus (int ) ;
 int glClear (int) ;
 int glFramebufferRenderbuffer (int ,int ,int ,scalar_t__) ;
 int glFramebufferTexture2D (int ,int ,int ,int ,int ) ;
 int glGenFramebuffers (int,int *) ;
 int glGenRenderbuffers (int,scalar_t__*) ;
 int glGenTextures (int,int *) ;
 int glGetIntegerv (int ,unsigned int*) ;
 int glRenderbufferStorage (int ,int ,unsigned int,unsigned int) ;
 int glTexStorage2D (int ,int,int ,unsigned int,unsigned int) ;
 int gl_core_context_bind_hw_render (TYPE_1__*,int) ;
 struct retro_hw_render_callback* video_driver_get_hw_context () ;

__attribute__((used)) static bool gl_core_init_hw_render(gl_core_t *gl, unsigned width, unsigned height)
{
   GLint max_fbo_size;
   GLint max_rb_size;
   GLenum status;
   struct retro_hw_render_callback *hwr = video_driver_get_hw_context();

   gl_core_context_bind_hw_render(gl, 1);

   RARCH_LOG("[GLCore]: Initializing HW render (%u x %u).\n", width, height);
   glGetIntegerv(GL_MAX_TEXTURE_SIZE, &max_fbo_size);
   glGetIntegerv(GL_MAX_RENDERBUFFER_SIZE, &max_rb_size);
   RARCH_LOG("[GLCore]: Max texture size: %d px, renderbuffer size: %d px.\n",
             max_fbo_size, max_rb_size);

   if (width > (unsigned)max_fbo_size)
       width = max_fbo_size;
   if (width > (unsigned)max_rb_size)
       width = max_rb_size;
   if (height > (unsigned)max_fbo_size)
       height = max_fbo_size;
   if (height > (unsigned)max_rb_size)
       height = max_rb_size;

   glGenFramebuffers(1, &gl->hw_render_fbo);
   glBindFramebuffer(GL_FRAMEBUFFER, gl->hw_render_fbo);
   glGenTextures(1, &gl->hw_render_texture);
   glBindTexture(GL_TEXTURE_2D, gl->hw_render_texture);
   glTexStorage2D(GL_TEXTURE_2D, 1, GL_RGBA8, width, height);
   glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, gl->hw_render_texture, 0);

   gl->hw_render_rb_ds = 0;
   gl->hw_render_bottom_left = hwr->bottom_left_origin;
   if (hwr->depth)
   {
      glGenRenderbuffers(1, &gl->hw_render_rb_ds);
      glBindRenderbuffer(GL_RENDERBUFFER, gl->hw_render_rb_ds);
      glRenderbufferStorage(GL_RENDERBUFFER, hwr->stencil ? GL_DEPTH24_STENCIL8 : GL_DEPTH_COMPONENT16,
                            width, height);
      glBindRenderbuffer(GL_RENDERBUFFER, 0);

      if (hwr->stencil)
         glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT, GL_RENDERBUFFER, gl->hw_render_rb_ds);
      else
         glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, gl->hw_render_rb_ds);
   }

   status = glCheckFramebufferStatus(GL_FRAMEBUFFER);
   if (status != GL_FRAMEBUFFER_COMPLETE)
   {
      RARCH_ERR("[GLCore]: Framebuffer is not complete.\n");
      gl_core_context_bind_hw_render(gl, 0);
      return 0;
   }

   if (hwr->depth && hwr->stencil)
      glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
   else if (hwr->depth)
      glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   else
      glClear(GL_COLOR_BUFFER_BIT);

   gl->hw_render_enable = 1;
   gl->hw_render_max_width = width;
   gl->hw_render_max_height = height;
   glBindTexture(GL_TEXTURE_2D, 0);
   glBindFramebuffer(GL_FRAMEBUFFER, 0);
   gl_core_context_bind_hw_render(gl, 0);

   return 1;
}
