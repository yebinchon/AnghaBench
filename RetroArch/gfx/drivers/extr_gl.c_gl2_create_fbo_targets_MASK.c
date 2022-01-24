#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ fbo_feedback; scalar_t__ fbo_feedback_texture; } ;
typedef  TYPE_1__ gl_t ;
struct TYPE_6__ {int fbo_pass; scalar_t__* fbo; scalar_t__* fbo_texture; } ;
typedef  TYPE_2__ gl2_renderchain_data_t ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RARCH_GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  RARCH_GL_FRAMEBUFFER ; 
 scalar_t__ RARCH_GL_FRAMEBUFFER_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (float,float,float,float) ; 

__attribute__((used)) static bool FUNC9(gl_t *gl, gl2_renderchain_data_t *chain)
{
   unsigned i;

   FUNC6(GL_TEXTURE_2D, 0);
   FUNC5(chain->fbo_pass, chain->fbo);

   for (i = 0; i < (unsigned)chain->fbo_pass; i++)
   {
      GLenum status;

      FUNC1(chain->fbo[i]);
      FUNC4(RARCH_GL_FRAMEBUFFER,
            RARCH_GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, chain->fbo_texture[i], 0);

      status = FUNC2(RARCH_GL_FRAMEBUFFER);
      if (status != RARCH_GL_FRAMEBUFFER_COMPLETE)
         goto error;
   }

   if (gl->fbo_feedback_texture)
   {
      GLenum status;

      FUNC5(1, &gl->fbo_feedback);
      FUNC1(gl->fbo_feedback);
      FUNC4(RARCH_GL_FRAMEBUFFER,
            RARCH_GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D,
            gl->fbo_feedback_texture, 0);

      status = FUNC2(RARCH_GL_FRAMEBUFFER);
      if (status != RARCH_GL_FRAMEBUFFER_COMPLETE)
         goto error;

      /* Make sure the feedback textures are cleared
       * so we don't feedback noise. */
      FUNC8(0.0f, 0.0f, 0.0f, 0.0f);
      FUNC7(GL_COLOR_BUFFER_BIT);
   }

   return true;

error:
   FUNC3(chain->fbo_pass, chain->fbo);
   if (gl->fbo_feedback)
      FUNC3(1, &gl->fbo_feedback);
   FUNC0("[GL]: Failed to set up frame buffer objects. Multi-pass shading will not work.\n");
   return false;
}