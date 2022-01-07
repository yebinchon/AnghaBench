
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP9TileData ;


 int inter_recon (int *,int) ;

void ff_vp9_inter_recon_8bpp(VP9TileData *td)
{
    inter_recon(td, 1);
}
