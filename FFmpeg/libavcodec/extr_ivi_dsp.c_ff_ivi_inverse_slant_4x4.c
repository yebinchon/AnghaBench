
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;
typedef int int16_t ;


 int IVI_INV_SLANT4 (int const,int const,int const,int const,int,int,int,int,int,int,int,int,int) ;

void ff_ivi_inverse_slant_4x4(const int32_t *in, int16_t *out, ptrdiff_t pitch, const uint8_t *flags)
{
    int i;
    const int32_t *src;
    int32_t *dst;
    int tmp[16];
    int t0, t1, t2, t3, t4;


    src = in;
    dst = tmp;
    for (i = 0; i < 4; i++) {
        if (flags[i]) {
            IVI_INV_SLANT4(src[0], src[4], src[8], src[12],
                           dst[0], dst[4], dst[8], dst[12],
                           t0, t1, t2, t3, t4);
        } else
            dst[0] = dst[4] = dst[8] = dst[12] = 0;

        src++;
        dst++;
    }



    src = tmp;
    for (i = 0; i < 4; i++) {
        if (!src[0] && !src[1] && !src[2] && !src[3]) {
            out[0] = out[1] = out[2] = out[3] = 0;
        } else {
            IVI_INV_SLANT4(src[0], src[1], src[2], src[3],
                           out[0], out[1], out[2], out[3],
                           t0, t1, t2, t3, t4);
        }
        src += 4;
        out += pitch;
    }

}
