
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int VP9TileData ;


 int intra_recon (int *,int ,int ,int) ;

void ff_vp9_intra_recon_16bpp(VP9TileData *td, ptrdiff_t y_off, ptrdiff_t uv_off)
{
    intra_recon(td, y_off, uv_off, 2);
}
