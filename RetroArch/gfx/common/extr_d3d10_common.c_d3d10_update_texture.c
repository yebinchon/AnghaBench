
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int MiscFlags; int Format; } ;
struct TYPE_9__ {int view; TYPE_1__ desc; int staging; int handle; } ;
typedef TYPE_2__ d3d10_texture_t ;
typedef int UINT ;
struct TYPE_11__ {int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_10__ {int pData; int RowPitch; } ;
typedef int DXGI_FORMAT ;
typedef TYPE_3__ D3D10_MAPPED_TEXTURE2D ;
typedef TYPE_4__ D3D10_BOX ;
typedef int D3D10Device ;


 int D3D10CopyTexture2DSubresourceRegion (int ,int ,int ,int ,int ,int ,int ,int ,TYPE_4__*) ;
 int D3D10GenerateMips (int ,int ) ;
 int D3D10MapTexture2D (int ,int ,int ,int ,TYPE_3__*) ;
 int D3D10UnmapTexture2D (int ,int ) ;
 int D3D10_MAP_WRITE ;
 int D3D10_RESOURCE_MISC_GENERATE_MIPS ;
 int PERF_START () ;
 int PERF_STOP () ;
 int conv_rgb565_argb8888 (int ,void const*,int,int,int ,int) ;
 int dxgi_copy (int,int,int ,int,void const*,int ,int ,int ) ;

void d3d10_update_texture(
      D3D10Device ctx,
      int width,
      int height,
      int pitch,
      DXGI_FORMAT format,
      const void* data,
      d3d10_texture_t* texture)
{
   D3D10_MAPPED_TEXTURE2D mapped_texture;
   D3D10_BOX frame_box = { 0, 0, 0, (UINT)width,
      (UINT)height, 1 };

   if (!texture || !texture->staging)
      return;

   D3D10MapTexture2D(texture->staging,
         0, D3D10_MAP_WRITE, 0,
         &mapped_texture);







   dxgi_copy(
         width, height, format, pitch, data, texture->desc.Format,
         mapped_texture.RowPitch,
         mapped_texture.pData);


   D3D10UnmapTexture2D(texture->staging, 0);

   D3D10CopyTexture2DSubresourceRegion(
         ctx, texture->handle, 0, 0, 0, 0, texture->staging, 0, &frame_box);

   if (texture->desc.MiscFlags & D3D10_RESOURCE_MISC_GENERATE_MIPS)
      D3D10GenerateMips(ctx, texture->view);
}
