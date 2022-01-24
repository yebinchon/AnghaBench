#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ bokeh; scalar_t__ snow; scalar_t__ snow_simple; scalar_t__ ribbon_simple; scalar_t__ ribbon; scalar_t__ font; scalar_t__ alpha_blend; } ;
struct TYPE_13__ {scalar_t__ vao; scalar_t__ menu_texture; TYPE_1__ pipelines; TYPE_3__* textures; int /*<<< orphan*/ * filter_chain; } ;
typedef  TYPE_2__ gl_core_t ;
struct TYPE_14__ {scalar_t__ tex; } ;

/* Variables and functions */
 unsigned int GL_CORE_NUM_TEXTURES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(gl_core_t *gl)
{
   unsigned i;
   if (!gl)
      return;

   FUNC5(gl, false);

   if (gl->filter_chain)
      FUNC9(gl->filter_chain);
   gl->filter_chain = NULL;

   FUNC1(0);
   if (gl->vao != 0)
      FUNC4(1, &gl->vao);

   for (i = 0; i < GL_CORE_NUM_TEXTURES; i++)
   {
      if (gl->textures[i].tex != 0)
         FUNC3(1, &gl->textures[i].tex);
   }
   FUNC12(gl->textures, 0, sizeof(gl->textures));

   if (gl->menu_texture != 0)
      FUNC3(1, &gl->menu_texture);

   if (gl->pipelines.alpha_blend)
      FUNC2(gl->pipelines.alpha_blend);
   if (gl->pipelines.font)
      FUNC2(gl->pipelines.font);
   if (gl->pipelines.ribbon)
      FUNC2(gl->pipelines.ribbon);
   if (gl->pipelines.ribbon_simple)
      FUNC2(gl->pipelines.ribbon_simple);
   if (gl->pipelines.snow_simple)
      FUNC2(gl->pipelines.snow_simple);
   if (gl->pipelines.snow)
      FUNC2(gl->pipelines.snow);
   if (gl->pipelines.bokeh)
      FUNC2(gl->pipelines.bokeh);

#ifdef HAVE_OVERLAY
   gl_core_free_overlay(gl);
   gl_core_free_scratch_vbos(gl);
#endif
   FUNC6(gl);
   FUNC8(gl);
   FUNC7(gl);
   FUNC0(gl);
}