
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP9TileData ;


 int decode_coeffs (int *,int ) ;

__attribute__((used)) static int decode_coeffs_16bpp(VP9TileData *td)
{
    return decode_coeffs(td, 0);
}
