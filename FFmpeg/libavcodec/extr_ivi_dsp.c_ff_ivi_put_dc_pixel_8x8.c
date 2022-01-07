
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int out ;
typedef int int32_t ;
typedef int int16_t ;


 int memset (int *,int ,int) ;

void ff_ivi_put_dc_pixel_8x8(const int32_t *in, int16_t *out, ptrdiff_t pitch,
                             int blk_size)
{
    int y;

    out[0] = in[0];
    memset(out + 1, 0, 7*sizeof(out[0]));
    out += pitch;

    for (y = 1; y < 8; out += pitch, y++)
        memset(out, 0, 8*sizeof(out[0]));
}
