#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct d3d_matrix {int dummy; } ;
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE8 ;
typedef  int /*<<< orphan*/  D3DMATRIX ;

/* Variables and functions */
 int /*<<< orphan*/  D3DTS_PROJECTION ; 
 int /*<<< orphan*/  D3DTS_VIEW ; 
 int /*<<< orphan*/  D3DTS_WORLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct d3d_matrix*) ; 
 int /*<<< orphan*/  FUNC2 (struct d3d_matrix*,void const*) ; 

void FUNC3(void *data, const void *mat_data)
{
   struct d3d_matrix matrix;
   LPDIRECT3DDEVICE8 d3dr     = (LPDIRECT3DDEVICE8)data;

   FUNC1(&matrix);

   FUNC0(d3dr, D3DTS_PROJECTION, (D3DMATRIX*)&matrix);
   FUNC0(d3dr, D3DTS_VIEW, (D3DMATRIX*)&matrix);

   if (mat_data)
      FUNC2(&matrix, mat_data);

   FUNC0(d3dr, D3DTS_WORLD, (D3DMATRIX*)&matrix);
}