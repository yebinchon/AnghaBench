
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ptrdiff_t ;
typedef int out ;
typedef int int32_t ;
typedef int int16_t ;


 int INV_HAAR4 (int const,int const,int const,int const,int,int,int,int,int,int,int,int,int) ;
 int memset (int*,int ,int) ;

void ff_ivi_inverse_haar_4x4(const int32_t *in, int16_t *out, ptrdiff_t pitch,
                             const uint8_t *flags)
{
    int i, shift, sp1, sp2;
    const int32_t *src;
    int32_t *dst;
    int tmp[16];
    int t0, t1, t2, t3, t4;



    src = in;
    dst = tmp;
    for (i = 0; i < 4; i++) {
        if (flags[i]) {

            shift = !(i & 2);
            sp1 = src[0] * (1 << shift);
            sp2 = src[4] * (1 << shift);
            INV_HAAR4( sp1, sp2, src[8], src[12],
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
            memset(out, 0, 4 * sizeof(out[0]));
        } else {
            INV_HAAR4(src[0], src[1], src[2], src[3],
                      out[0], out[1], out[2], out[3],
                      t0, t1, t2, t3, t4);
        }
        src += 4;
        out += pitch;
    }

}
