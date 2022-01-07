
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int out ;
typedef int int32_t ;
typedef int int16_t ;


 int IVI_INV_SLANT4 (int const,int const,int const,int const,int ,int ,int ,int ,int,int,int,int,int) ;
 int memset (int *,int ,int) ;

void ff_ivi_row_slant4(const int32_t *in, int16_t *out, ptrdiff_t pitch, const uint8_t *flags)
{
    int i;
    int t0, t1, t2, t3, t4;


    for (i = 0; i < 4; i++) {
        if (!in[0] && !in[1] && !in[2] && !in[3]) {
            memset(out, 0, 4*sizeof(out[0]));
        } else {
            IVI_INV_SLANT4( in[0], in[1], in[2], in[3],
                           out[0], out[1], out[2], out[3],
                           t0, t1, t2, t3, t4);
        }
        in += 4;
        out += pitch;
    }

}
