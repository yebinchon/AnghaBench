
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef size_t ptrdiff_t ;
typedef int int32_t ;
typedef scalar_t__ int16_t ;


 int INV_HAAR4 (int const,int const,int const,int const,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int) ;

void ff_ivi_col_haar4(const int32_t *in, int16_t *out, ptrdiff_t pitch,
                      const uint8_t *flags)
{
    int i;
    int t0, t1, t2, t3, t4;



    for (i = 0; i < 4; i++) {
        if (flags[i]) {
            INV_HAAR4(in[0], in[4], in[8], in[12],
                      out[0 * pitch], out[1 * pitch],
                      out[2 * pitch], out[3 * pitch],
                      t0, t1, t2, t3, t4);
        } else
            out[0 * pitch] = out[1 * pitch] =
            out[2 * pitch] = out[3 * pitch] = 0;

        in++;
        out++;
    }

}
