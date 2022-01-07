
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct retro_hw_render_callback {int depth; int stencil; } ;
struct TYPE_6__ {unsigned int textures; int hw_render_fbo_init; int * texture; int * hw_render_fbo; int has_fbo; } ;
typedef TYPE_1__ gl_t ;
struct TYPE_7__ {int hw_render_depth_init; int * hw_render_depth; } ;
typedef TYPE_2__ gl2_renderchain_data_t ;
typedef int GLint ;
typedef scalar_t__ GLenum ;


 int GL_DEPTH_COMPONENT16 ;
 int GL_DEPTH_STENCIL_ATTACHMENT ;
 int GL_MAX_TEXTURE_SIZE ;
 int GL_TEXTURE_2D ;
 int RARCH_ERR (char*,unsigned int,scalar_t__) ;
 int RARCH_GL_COLOR_ATTACHMENT0 ;
 int RARCH_GL_DEPTH24_STENCIL8 ;
 int RARCH_GL_DEPTH_ATTACHMENT ;
 int RARCH_GL_FRAMEBUFFER ;
 scalar_t__ RARCH_GL_FRAMEBUFFER_COMPLETE ;
 int RARCH_GL_MAX_RENDERBUFFER_SIZE ;
 int RARCH_GL_RENDERBUFFER ;
 int RARCH_GL_STENCIL_ATTACHMENT ;
 int RARCH_LOG (char*,...) ;
 int gl2_bind_fb (int ) ;
 int gl2_bind_rb (int ,int ) ;
 scalar_t__ gl2_check_fb_status (int ) ;
 int gl2_context_bind_hw_render (TYPE_1__*,int) ;
 int gl2_fb_rb (int ,int ,int ,int ) ;
 int gl2_fb_texture_2d (int ,int ,int ,int ,int ) ;
 int gl2_gen_fb (unsigned int,int *) ;
 int gl2_gen_rb (unsigned int,int *) ;
 int gl2_rb_storage (int ,int ,unsigned int,unsigned int) ;
 int gl2_renderchain_bind_backbuffer () ;
 int glBindTexture (int ,int ) ;
 int glGetIntegerv (int ,int *) ;
 struct retro_hw_render_callback* video_driver_get_hw_context () ;

__attribute__((used)) static bool gl2_renderchain_init_hw_render(
      gl_t *gl,
      gl2_renderchain_data_t *chain,
      unsigned width, unsigned height)
{
   GLenum status;
   unsigned i;
   bool depth = 0;
   bool stencil = 0;
   GLint max_fbo_size = 0;
   GLint max_renderbuffer_size = 0;
   struct retro_hw_render_callback *hwr =
      video_driver_get_hw_context();



   gl2_context_bind_hw_render(gl, 1);

   RARCH_LOG("[GL]: Initializing HW render (%u x %u).\n", width, height);
   glGetIntegerv(GL_MAX_TEXTURE_SIZE, &max_fbo_size);
   glGetIntegerv(RARCH_GL_MAX_RENDERBUFFER_SIZE, &max_renderbuffer_size);
   RARCH_LOG("[GL]: Max texture size: %d px, renderbuffer size: %d px.\n",
         max_fbo_size, max_renderbuffer_size);

   if (!gl->has_fbo)
      return 0;

   RARCH_LOG("[GL]: Supports FBO (render-to-texture).\n");

   glBindTexture(GL_TEXTURE_2D, 0);
   gl2_gen_fb(gl->textures, gl->hw_render_fbo);

   depth = hwr->depth;
   stencil = hwr->stencil;

   if (depth)
   {
      gl2_gen_rb(gl->textures, chain->hw_render_depth);
      chain->hw_render_depth_init = 1;
   }

   for (i = 0; i < gl->textures; i++)
   {
      gl2_bind_fb(gl->hw_render_fbo[i]);
      gl2_fb_texture_2d(RARCH_GL_FRAMEBUFFER,
            RARCH_GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, gl->texture[i], 0);

      if (depth)
      {
         gl2_bind_rb(RARCH_GL_RENDERBUFFER, chain->hw_render_depth[i]);
         gl2_rb_storage(RARCH_GL_RENDERBUFFER,
               stencil ? RARCH_GL_DEPTH24_STENCIL8 : GL_DEPTH_COMPONENT16,
               width, height);
         gl2_bind_rb(RARCH_GL_RENDERBUFFER, 0);

         if (stencil)
         {
            gl2_fb_rb(RARCH_GL_FRAMEBUFFER,
                  GL_DEPTH_STENCIL_ATTACHMENT,
                  RARCH_GL_RENDERBUFFER,
                  chain->hw_render_depth[i]);

         }
         else
         {
            gl2_fb_rb(RARCH_GL_FRAMEBUFFER,
                  RARCH_GL_DEPTH_ATTACHMENT,
                  RARCH_GL_RENDERBUFFER,
                  chain->hw_render_depth[i]);
         }
      }

      status = gl2_check_fb_status(RARCH_GL_FRAMEBUFFER);
      if (status != RARCH_GL_FRAMEBUFFER_COMPLETE)
      {
         RARCH_ERR("[GL]: Failed to create HW render FBO #%u, error: 0x%04x.\n",
               i, status);
         return 0;
      }
   }

   gl2_renderchain_bind_backbuffer();
   gl->hw_render_fbo_init = 1;

   gl2_context_bind_hw_render(gl, 0);
   return 1;
}
