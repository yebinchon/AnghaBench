#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ rgb32; } ;
typedef  TYPE_1__ video_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_2__ d3d8_video_t ;
struct TYPE_9__ {scalar_t__ tex; int /*<<< orphan*/  tex_h; int /*<<< orphan*/  tex_w; scalar_t__ vertex_buf; } ;
typedef  TYPE_3__ d3d8_renderchain_t ;
typedef  int /*<<< orphan*/  Vertex ;
typedef  scalar_t__ LPDIRECT3DVERTEXBUFFER8 ;
typedef  scalar_t__ LPDIRECT3DTEXTURE8 ;
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE8 ;

/* Variables and functions */
 int /*<<< orphan*/  D3DCULL_NONE ; 
 int D3DFVF_DIFFUSE ; 
 int D3DFVF_TEX1 ; 
 int D3DFVF_XYZ ; 
 int /*<<< orphan*/  D3DPOOL_MANAGED ; 
 int /*<<< orphan*/  D3DRS_CULLMODE ; 
 int /*<<< orphan*/  D3DRS_LIGHTING ; 
 int /*<<< orphan*/  D3DRS_ZENABLE ; 
 int /*<<< orphan*/  D3DTADDRESS_BORDER ; 
 int /*<<< orphan*/  D3DUSAGE_WRITEONLY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(
      d3d8_video_t *d3d,
      d3d8_renderchain_t *chain,
      const video_info_t *info)
{
   LPDIRECT3DDEVICE8 d3dr     = (LPDIRECT3DDEVICE8)d3d->dev;

   chain->vertex_buf         = (LPDIRECT3DVERTEXBUFFER8)FUNC6(d3dr, 4 * sizeof(Vertex),
         D3DUSAGE_WRITEONLY,
         D3DFVF_XYZ | D3DFVF_TEX1 | D3DFVF_DIFFUSE,
         D3DPOOL_MANAGED,
         NULL);

   if (!chain->vertex_buf)
      return false;

   chain->tex = (LPDIRECT3DTEXTURE8)FUNC5(d3dr, NULL,
         chain->tex_w, chain->tex_h, 1, 0,
         info->rgb32
         ?
         FUNC1() : FUNC0(),
         D3DPOOL_MANAGED, 0, 0, 0, NULL, NULL,
         false);

   if (!chain->tex)
      return false;

   FUNC3(d3dr, 0, D3DTADDRESS_BORDER);
   FUNC4(d3dr, 0, D3DTADDRESS_BORDER);
   FUNC2(d3dr, D3DRS_LIGHTING, 0);
   FUNC2(d3dr, D3DRS_CULLMODE, D3DCULL_NONE);
   FUNC2(d3dr, D3DRS_ZENABLE, FALSE);

   return true;
}