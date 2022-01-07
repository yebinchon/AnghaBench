
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int tex; int fbo; } ;
typedef int fft_t ;
typedef int GLuint ;
typedef int GLint ;
typedef scalar_t__ GLenum ;


 int GL_COLOR ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_FRAMEBUFFER ;
 scalar_t__ GL_RG16I ;
 scalar_t__ GL_RGBA8 ;
 int GL_TEXTURE_2D ;
 int fft_init_texture (int *,int *,scalar_t__,unsigned int,unsigned int,unsigned int,scalar_t__,scalar_t__) ;
 int glBindFramebuffer (int ,int ) ;
 int glClear (int ) ;
 int glClearBufferiv (int ,int ,int const*) ;
 int glClearBufferuiv (int ,int ,int const*) ;
 int glClearColor (int ,int ,int ,int ) ;
 int glFramebufferTexture2D (int ,int ,int ,int ,int ) ;
 int glGenFramebuffers (int,int *) ;

__attribute__((used)) static void fft_init_target(fft_t *fft, struct target *target, GLenum format,
      unsigned width, unsigned height, unsigned levels, GLenum mag, GLenum min)
{
   fft_init_texture(fft, &target->tex, format, width, height, levels, mag, min);
   glGenFramebuffers(1, &target->fbo);
   glBindFramebuffer(GL_FRAMEBUFFER, target->fbo);

   glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D,
      target->tex, 0);

   if (format == GL_RGBA8)
   {
      glClearColor(0, 0, 0, 0);
      glClear(GL_COLOR_BUFFER_BIT);
   }
   else if (format == GL_RG16I)
   {
      static const GLint v[] = { 0, 0, 0, 0 };
      glClearBufferiv(GL_COLOR, 0, v);
   }
   else
   {
      static const GLuint v[] = { 0, 0, 0, 0 };
      glClearBufferuiv(GL_COLOR, 0, v);
   }
   glBindFramebuffer(GL_FRAMEBUFFER, 0);
}
