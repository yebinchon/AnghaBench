
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int out ;
typedef int int32_t ;
typedef int int16_t ;


 int IVI_INV_SLANT8 (int const,int const,int const,int const,int const,int const,int const,int const,int ,int ,int ,int ,int ,int ,int ,int ,int,int,int,int,int,int,int,int,int) ;
 int memset (int *,int ,int) ;

void ff_ivi_row_slant8(const int32_t *in, int16_t *out, ptrdiff_t pitch, const uint8_t *flags)
{
    int i;
    int t0, t1, t2, t3, t4, t5, t6, t7, t8;


    for (i = 0; i < 8; i++) {
        if (!in[0] && !in[1] && !in[2] && !in[3] && !in[4] && !in[5] && !in[6] && !in[7]) {
            memset(out, 0, 8*sizeof(out[0]));
        } else {
            IVI_INV_SLANT8( in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7],
                           out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7],
                           t0, t1, t2, t3, t4, t5, t6, t7, t8);
        }
        in += 8;
        out += pitch;
    }

}
