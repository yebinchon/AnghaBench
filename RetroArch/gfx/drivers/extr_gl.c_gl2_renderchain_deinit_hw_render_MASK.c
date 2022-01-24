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
struct TYPE_6__ {int hw_render_fbo_init; int /*<<< orphan*/  textures; int /*<<< orphan*/  hw_render_fbo; } ;
typedef  TYPE_1__ gl_t ;
struct TYPE_7__ {int /*<<< orphan*/  hw_render_depth; scalar_t__ hw_render_depth_init; } ;
typedef  TYPE_2__ gl2_renderchain_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
      gl_t *gl,
      gl2_renderchain_data_t *chain)
{
   if (!gl)
      return;

   FUNC0(gl, true);

   if (gl->hw_render_fbo_init)
      FUNC1(gl->textures, gl->hw_render_fbo);
   if (chain->hw_render_depth_init)
      FUNC2(gl->textures, chain->hw_render_depth);
   gl->hw_render_fbo_init = false;

   FUNC0(gl, false);
}