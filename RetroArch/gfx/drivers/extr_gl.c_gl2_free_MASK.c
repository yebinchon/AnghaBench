#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int textures; scalar_t__ renderchain_data; scalar_t__ core_context_in_use; int /*<<< orphan*/  pbo_readback_scaler; int /*<<< orphan*/ * pbo_readback; scalar_t__ pbo_readback_enable; int /*<<< orphan*/  scaler; int /*<<< orphan*/  pbo; scalar_t__ menu_texture; scalar_t__* texture; int /*<<< orphan*/  shader_data; TYPE_1__* shader; scalar_t__ have_sync; } ;
typedef  TYPE_2__ gl_t ;
struct TYPE_17__ {int /*<<< orphan*/  vao; } ;
typedef  TYPE_3__ gl2_renderchain_data_t ;
struct TYPE_15__ {int /*<<< orphan*/  (* deinit ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GL_TEXTURE_REFERENCE_BUFFER_SCE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static void FUNC17(void *data)
{
   gl_t *gl = (gl_t*)data;
   if (!gl)
      return;

#ifdef HAVE_VIDEO_LAYOUT
   gl2_video_layout_free(gl);
#endif

   FUNC1(gl, false);

   if (gl->have_sync)
      FUNC7(gl,
            (gl2_renderchain_data_t*)
            gl->renderchain_data);

   FUNC0();

   gl->shader->deinit(gl->shader_data);

   FUNC12(gl->textures, gl->texture);

#if defined(HAVE_MENU)
   if (gl->menu_texture)
      glDeleteTextures(1, &gl->menu_texture);
#endif

#ifdef HAVE_OVERLAY
   gl2_free_overlay(gl);
#endif

#if defined(HAVE_PSGL)
   glBindBuffer(GL_TEXTURE_REFERENCE_BUFFER_SCE, 0);
   glDeleteBuffers(1, &gl->pbo);
#endif

   FUNC14(&gl->scaler);

   if (gl->pbo_readback_enable)
   {
      FUNC11(4, gl->pbo_readback);
      FUNC14(&gl->pbo_readback_scaler);
   }

#ifndef HAVE_OPENGLES
   if (gl->core_context_in_use)
   {
      gl2_renderchain_data_t *chain = (gl2_renderchain_data_t*)
         gl->renderchain_data;

      FUNC10(0);
      FUNC13(1, &chain->vao);
   }
#endif

   FUNC5(gl, (gl2_renderchain_data_t*)gl->renderchain_data);
   FUNC6(gl, (gl2_renderchain_data_t*)gl->renderchain_data);
   FUNC2(gl);

   FUNC16();

   FUNC3(gl);
}