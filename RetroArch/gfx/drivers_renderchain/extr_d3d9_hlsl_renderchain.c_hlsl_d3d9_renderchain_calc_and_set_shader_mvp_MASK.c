#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct shader_pass {int /*<<< orphan*/  vtable; } ;
struct d3d_matrix {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ chain; } ;
typedef  TYPE_2__ hlsl_renderchain_t ;

/* Variables and functions */
 double D3D_PI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void const*) ; 
 int /*<<< orphan*/  FUNC1 (struct d3d_matrix*) ; 
 int /*<<< orphan*/  FUNC2 (struct d3d_matrix*,struct d3d_matrix*,struct d3d_matrix*) ; 
 int /*<<< orphan*/  FUNC3 (struct d3d_matrix*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct d3d_matrix*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct d3d_matrix*,struct d3d_matrix*) ; 

__attribute__((used)) static void FUNC6(
      hlsl_renderchain_t *chain,
      struct shader_pass *pass,
      unsigned vp_width, unsigned vp_height,
      unsigned rotation)
{
   struct d3d_matrix proj, ortho, rot, matrix;

   FUNC3(&ortho, 0, vp_width, 0, vp_height, 0, 1);
   FUNC1(&rot);
   FUNC4(&rot, rotation * (D3D_PI / 2.0));

   FUNC2(&proj, &ortho, &rot);
   FUNC5(&matrix, &proj);

   FUNC0(pass->vtable,
         chain->chain.dev, "modelViewProj", (const void*)&matrix);
}