#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rotation; scalar_t__ hw_render_bottom_left; } ;
typedef  TYPE_1__ gl_core_t ;

/* Variables and functions */
 int /*<<< orphan*/  gl_core_default_ortho ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void FUNC2(void *data, unsigned rotation)
{
   gl_core_t *gl = (gl_core_t*)data;

   if (!gl)
      return;

   gl->rotation = FUNC1() && gl->hw_render_bottom_left ? 90 * rotation : 270 * rotation;
   FUNC0(gl, &gl_core_default_ortho, true);
}