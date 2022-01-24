#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int hw_render_enable; scalar_t__ hw_render_texture; scalar_t__ hw_render_rb_ds; scalar_t__ hw_render_fbo; } ;
typedef  TYPE_1__ gl_core_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC4(gl_core_t *gl)
{
   FUNC3(gl, true);

   if (gl->hw_render_fbo)
      FUNC0(1, &gl->hw_render_fbo);
   if (gl->hw_render_rb_ds)
      FUNC1(1, &gl->hw_render_rb_ds);
   if (gl->hw_render_texture)
      FUNC2(1, &gl->hw_render_texture);

   gl->hw_render_fbo = 0;
   gl->hw_render_rb_ds = 0;
   gl->hw_render_texture = 0;
   FUNC3(gl, false);
   gl->hw_render_enable = false;
}