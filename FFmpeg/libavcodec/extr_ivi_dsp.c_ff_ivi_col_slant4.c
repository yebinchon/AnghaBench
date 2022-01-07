
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;
typedef scalar_t__ int16_t ;


 int IVI_INV_SLANT4 (int const,int const,int const,int const,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int) ;

void ff_ivi_col_slant4(const int32_t *in, int16_t *out, ptrdiff_t pitch, const uint8_t *flags)
{
    int i, row2;
    int t0, t1, t2, t3, t4;

    row2 = pitch << 1;


    for (i = 0; i < 4; i++) {
        if (flags[i]) {
            IVI_INV_SLANT4(in[0], in[4], in[8], in[12],
                           out[0], out[pitch], out[row2], out[row2 + pitch],
                           t0, t1, t2, t3, t4);
        } else {
            out[0] = out[pitch] = out[row2] = out[row2 + pitch] = 0;
        }

        in++;
        out++;
    }

}
