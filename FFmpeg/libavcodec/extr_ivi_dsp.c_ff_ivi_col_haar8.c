
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef size_t ptrdiff_t ;
typedef int int32_t ;
typedef scalar_t__ int16_t ;


 int INV_HAAR8 (int const,int const,int const,int const,int const,int const,int const,int const,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int,int) ;

void ff_ivi_col_haar8(const int32_t *in, int16_t *out, ptrdiff_t pitch,
                      const uint8_t *flags)
{
    int i;
    int t0, t1, t2, t3, t4, t5, t6, t7, t8;



    for (i = 0; i < 8; i++) {
        if (flags[i]) {
            INV_HAAR8(in[ 0], in[ 8], in[16], in[24],
                      in[32], in[40], in[48], in[56],
                      out[0 * pitch], out[1 * pitch],
                      out[2 * pitch], out[3 * pitch],
                      out[4 * pitch], out[5 * pitch],
                      out[6 * pitch], out[7 * pitch],
                      t0, t1, t2, t3, t4, t5, t6, t7, t8);
        } else
            out[0 * pitch] = out[1 * pitch] =
            out[2 * pitch] = out[3 * pitch] =
            out[4 * pitch] = out[5 * pitch] =
            out[6 * pitch] = out[7 * pitch] = 0;

        in++;
        out++;
    }

}
