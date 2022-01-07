
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_fbo_rect {int height; int width; } ;
typedef int GLuint ;


 int GL_TEXTURE_2D ;
 int RARCH_GL_COLOR_ATTACHMENT0 ;
 int RARCH_GL_FORMAT32 ;
 int RARCH_GL_FRAMEBUFFER ;
 scalar_t__ RARCH_GL_FRAMEBUFFER_COMPLETE ;
 int RARCH_GL_INTERNAL_FORMAT32 ;
 int RARCH_GL_TEXTURE_TYPE32 ;
 int RARCH_WARN (char*) ;
 int gl2_bind_fb (int ) ;
 scalar_t__ gl2_check_fb_status (int ) ;
 int gl2_fb_texture_2d (int ,int ,int ,int ,int ) ;
 int gl2_load_texture_image (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int glBindTexture (int ,int ) ;
 int glDeleteTextures (int,int *) ;
 int glGenTextures (int,int *) ;

__attribute__((used)) static bool gl2_recreate_fbo(
      struct video_fbo_rect *fbo_rect,
      GLuint fbo,
      GLuint* texture
      )
{
   gl2_bind_fb(fbo);
   glDeleteTextures(1, texture);
   glGenTextures(1, texture);
   glBindTexture(GL_TEXTURE_2D, *texture);
   gl2_load_texture_image(GL_TEXTURE_2D,
         0, RARCH_GL_INTERNAL_FORMAT32,
         fbo_rect->width,
         fbo_rect->height,
         0, RARCH_GL_TEXTURE_TYPE32,
         RARCH_GL_FORMAT32, ((void*)0));

   gl2_fb_texture_2d(RARCH_GL_FRAMEBUFFER,
         RARCH_GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D,
         *texture, 0);

   if (gl2_check_fb_status(RARCH_GL_FRAMEBUFFER)
         == RARCH_GL_FRAMEBUFFER_COMPLETE)
      return 1;

   RARCH_WARN("Failed to reinitialize FBO texture.\n");
   return 0;
}
