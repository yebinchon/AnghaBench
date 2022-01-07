
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
typedef TYPE_2__ d3d11_texture_t ;
struct TYPE_11__ {unsigned int member_3; unsigned int member_4; int member_5; int member_2; int member_1; int member_0; } ;
struct TYPE_10__ {int pData; int RowPitch; } ;
typedef int DXGI_FORMAT ;
typedef TYPE_3__ D3D11_MAPPED_SUBRESOURCE ;
typedef TYPE_4__ D3D11_BOX ;
typedef int D3D11DeviceContext ;


 int D3D11CopyTexture2DSubresourceRegion (int ,int ,int ,int ,int ,int ,int ,int ,TYPE_4__*) ;
 int D3D11GenerateMips (int ,int ) ;
 int D3D11MapTexture2D (int ,int ,int ,int ,int ,TYPE_3__*) ;
 int D3D11UnmapTexture2D (int ,int ,int ) ;
 int D3D11_MAP_WRITE ;
 int D3D11_RESOURCE_MISC_GENERATE_MIPS ;
 int PERF_START () ;
 int PERF_STOP () ;
 int conv_rgb565_argb8888 (int ,void const*,unsigned int,unsigned int,int ,unsigned int) ;
 int dxgi_copy (unsigned int,unsigned int,int ,unsigned int,void const*,int ,int ,int ) ;

void d3d11_update_texture(
      D3D11DeviceContext ctx,
      unsigned width,
      unsigned height,
      unsigned pitch,
      DXGI_FORMAT format,
      const void* data,
      d3d11_texture_t* texture)
{
   D3D11_MAPPED_SUBRESOURCE mapped_texture;
   D3D11_BOX frame_box = { 0, 0, 0, width, height, 1 };

   if (!texture || !texture->staging)
      return;

   D3D11MapTexture2D(ctx, texture->staging,
         0, D3D11_MAP_WRITE, 0, &mapped_texture);







   dxgi_copy(
         width, height, format, pitch, data,
         texture->desc.Format, mapped_texture.RowPitch,
         mapped_texture.pData);


   D3D11UnmapTexture2D(ctx, texture->staging, 0);

   D3D11CopyTexture2DSubresourceRegion(
         ctx, texture->handle, 0, 0, 0, 0, texture->staging, 0, &frame_box);

   if (texture->desc.MiscFlags & D3D11_RESOURCE_MISC_GENERATE_MIPS)
      D3D11GenerateMips(ctx, texture->view);
}
