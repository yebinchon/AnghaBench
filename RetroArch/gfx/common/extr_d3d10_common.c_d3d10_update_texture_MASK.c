#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int MiscFlags; int /*<<< orphan*/  Format; } ;
struct TYPE_9__ {int /*<<< orphan*/  view; TYPE_1__ desc; int /*<<< orphan*/  staging; int /*<<< orphan*/  handle; } ;
typedef  TYPE_2__ d3d10_texture_t ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {int member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {int /*<<< orphan*/  pData; int /*<<< orphan*/  RowPitch; } ;
typedef  int /*<<< orphan*/  DXGI_FORMAT ;
typedef  TYPE_3__ D3D10_MAPPED_TEXTURE2D ;
typedef  TYPE_4__ D3D10_BOX ;
typedef  int /*<<< orphan*/  D3D10Device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3D10_MAP_WRITE ; 
 int D3D10_RESOURCE_MISC_GENERATE_MIPS ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void const*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ,int,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(
      D3D10Device      ctx,
      int              width,
      int              height,
      int              pitch,
      DXGI_FORMAT      format,
      const void*      data,
      d3d10_texture_t* texture)
{
   D3D10_MAPPED_TEXTURE2D mapped_texture;
   D3D10_BOX                frame_box = { 0, 0, 0, (UINT)width,
      (UINT)height, 1 };

   if (!texture || !texture->staging)
      return;

   FUNC2(texture->staging,
         0, D3D10_MAP_WRITE, 0,
         &mapped_texture);

#if 0
   PERF_START();
   conv_rgb565_argb8888(mapped_texture.pData, data, width, height,
         mapped_texture.RowPitch, pitch);
   PERF_STOP();
#else
   FUNC7(
         width, height, format, pitch, data, texture->desc.Format,
         mapped_texture.RowPitch,
         mapped_texture.pData);
#endif

   FUNC3(texture->staging, 0);

   FUNC0(
         ctx, texture->handle, 0, 0, 0, 0, texture->staging, 0, &frame_box);

   if (texture->desc.MiscFlags & D3D10_RESOURCE_MISC_GENERATE_MIPS)
      FUNC1(ctx, texture->view);
}