#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct retro_hw_render_callback {int depth; int stencil; } ;
struct TYPE_6__ {unsigned int textures; int hw_render_fbo_init; int /*<<< orphan*/ * texture; int /*<<< orphan*/ * hw_render_fbo; int /*<<< orphan*/  has_fbo; } ;
typedef  TYPE_1__ gl_t ;
struct TYPE_7__ {int hw_render_depth_init; int /*<<< orphan*/ * hw_render_depth; } ;
typedef  TYPE_2__ gl2_renderchain_data_t ;
typedef  int /*<<< orphan*/  GLint ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_DEPTH_COMPONENT16 ; 
 int /*<<< orphan*/  GL_DEPTH_STENCIL_ATTACHMENT ; 
 int /*<<< orphan*/  GL_MAX_TEXTURE_SIZE ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  RARCH_GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  RARCH_GL_DEPTH24_STENCIL8 ; 
 int /*<<< orphan*/  RARCH_GL_DEPTH_ATTACHMENT ; 
 int /*<<< orphan*/  RARCH_GL_FRAMEBUFFER ; 
 scalar_t__ RARCH_GL_FRAMEBUFFER_COMPLETE ; 
 int /*<<< orphan*/  RARCH_GL_MAX_RENDERBUFFER_SIZE ; 
 int /*<<< orphan*/  RARCH_GL_RENDERBUFFER ; 
 int /*<<< orphan*/  RARCH_GL_STENCIL_ATTACHMENT ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct retro_hw_render_callback* FUNC14 () ; 

__attribute__((used)) static bool FUNC15(
      gl_t *gl,
      gl2_renderchain_data_t *chain,
      unsigned width, unsigned height)
{
   GLenum status;
   unsigned i;
   bool depth                           = false;
   bool stencil                         = false;
   GLint max_fbo_size                   = 0;
   GLint max_renderbuffer_size          = 0;
   struct retro_hw_render_callback *hwr =
      FUNC14();

   /* We can only share texture objects through contexts.
    * FBOs are "abstract" objects and are not shared. */
   FUNC5(gl, true);

   FUNC1("[GL]: Initializing HW render (%u x %u).\n", width, height);
   FUNC13(GL_MAX_TEXTURE_SIZE, &max_fbo_size);
   FUNC13(RARCH_GL_MAX_RENDERBUFFER_SIZE, &max_renderbuffer_size);
   FUNC1("[GL]: Max texture size: %d px, renderbuffer size: %d px.\n",
         max_fbo_size, max_renderbuffer_size);

   if (!gl->has_fbo)
      return false;

   FUNC1("[GL]: Supports FBO (render-to-texture).\n");

   FUNC12(GL_TEXTURE_2D, 0);
   FUNC8(gl->textures, gl->hw_render_fbo);

   depth   = hwr->depth;
   stencil = hwr->stencil;

   if (depth)
   {
      FUNC9(gl->textures, chain->hw_render_depth);
      chain->hw_render_depth_init = true;
   }

   for (i = 0; i < gl->textures; i++)
   {
      FUNC2(gl->hw_render_fbo[i]);
      FUNC7(RARCH_GL_FRAMEBUFFER,
            RARCH_GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, gl->texture[i], 0);

      if (depth)
      {
         FUNC3(RARCH_GL_RENDERBUFFER, chain->hw_render_depth[i]);
         FUNC10(RARCH_GL_RENDERBUFFER,
               stencil ? RARCH_GL_DEPTH24_STENCIL8 : GL_DEPTH_COMPONENT16,
               width, height);
         FUNC3(RARCH_GL_RENDERBUFFER, 0);

         if (stencil)
         {
#if defined(HAVE_OPENGLES2) || defined(HAVE_OPENGLES1) || ((defined(__MACH__) && (defined(__ppc__) || defined(__ppc64__))))
            /* GLES2 is a bit weird, as always.
             * There's no GL_DEPTH_STENCIL_ATTACHMENT like in desktop GL. */
            gl2_fb_rb(RARCH_GL_FRAMEBUFFER,
                  RARCH_GL_DEPTH_ATTACHMENT,
                  RARCH_GL_RENDERBUFFER,
                  chain->hw_render_depth[i]);
            gl2_fb_rb(RARCH_GL_FRAMEBUFFER,
                  RARCH_GL_STENCIL_ATTACHMENT,
                  RARCH_GL_RENDERBUFFER,
                  chain->hw_render_depth[i]);
#else
            /* We use ARB FBO extensions, no need to check. */
            FUNC6(RARCH_GL_FRAMEBUFFER,
                  GL_DEPTH_STENCIL_ATTACHMENT,
                  RARCH_GL_RENDERBUFFER,
                  chain->hw_render_depth[i]);
#endif
         }
         else
         {
            FUNC6(RARCH_GL_FRAMEBUFFER,
                  RARCH_GL_DEPTH_ATTACHMENT,
                  RARCH_GL_RENDERBUFFER,
                  chain->hw_render_depth[i]);
         }
      }

      status = FUNC4(RARCH_GL_FRAMEBUFFER);
      if (status != RARCH_GL_FRAMEBUFFER_COMPLETE)
      {
         FUNC0("[GL]: Failed to create HW render FBO #%u, error: 0x%04x.\n",
               i, status);
         return false;
      }
   }

   FUNC11();
   gl->hw_render_fbo_init = true;

   FUNC5(gl, false);
   return true;
}