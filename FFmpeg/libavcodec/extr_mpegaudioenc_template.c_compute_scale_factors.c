
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* scale_factor_table; int* scale_diff_table; } ;
typedef TYPE_1__ MpegAudioContext ;


 int SBLIMIT ;
 int abs (int) ;
 int av_assert2 (int) ;
 int av_log2 (int) ;
 int ff_dlog (int *,char*,int,unsigned char,unsigned char,unsigned char,int,...) ;

__attribute__((used)) static void compute_scale_factors(MpegAudioContext *s,
                                  unsigned char scale_code[SBLIMIT],
                                  unsigned char scale_factors[SBLIMIT][3],
                                  int sb_samples[3][12][SBLIMIT],
                                  int sblimit)
{
    int *p, vmax, v, n, i, j, k, code;
    int index, d1, d2;
    unsigned char *sf = &scale_factors[0][0];

    for(j=0;j<sblimit;j++) {
        for(i=0;i<3;i++) {

            p = &sb_samples[i][0][j];
            vmax = abs(*p);
            for(k=1;k<12;k++) {
                p += SBLIMIT;
                v = abs(*p);
                if (v > vmax)
                    vmax = v;
            }

            if (vmax > 1) {
                n = av_log2(vmax);


                index = (21 - n) * 3 - 3;
                if (index >= 0) {
                    while (vmax <= s->scale_factor_table[index+1])
                        index++;
                } else {
                    index = 0;
                }
            } else {
                index = 62;
            }

            ff_dlog(((void*)0), "%2d:%d in=%x %x %d\n",
                    j, i, vmax, s->scale_factor_table[index], index);

            av_assert2(index >=0 && index <= 63);
            sf[i] = index;
        }



        d1 = s->scale_diff_table[sf[0] - sf[1] + 64];
        d2 = s->scale_diff_table[sf[1] - sf[2] + 64];


        switch(d1 * 5 + d2) {
        case 0*5+0:
        case 0*5+4:
        case 3*5+4:
        case 4*5+0:
        case 4*5+4:
            code = 0;
            break;
        case 0*5+1:
        case 0*5+2:
        case 4*5+1:
        case 4*5+2:
            code = 3;
            sf[2] = sf[1];
            break;
        case 0*5+3:
        case 4*5+3:
            code = 3;
            sf[1] = sf[2];
            break;
        case 1*5+0:
        case 1*5+4:
        case 2*5+4:
            code = 1;
            sf[1] = sf[0];
            break;
        case 1*5+1:
        case 1*5+2:
        case 2*5+0:
        case 2*5+1:
        case 2*5+2:
            code = 2;
            sf[1] = sf[2] = sf[0];
            break;
        case 2*5+3:
        case 3*5+3:
            code = 2;
            sf[0] = sf[1] = sf[2];
            break;
        case 3*5+0:
        case 3*5+1:
        case 3*5+2:
            code = 2;
            sf[0] = sf[2] = sf[1];
            break;
        case 1*5+3:
            code = 2;
            if (sf[0] > sf[2])
              sf[0] = sf[2];
            sf[1] = sf[2] = sf[0];
            break;
        default:
            av_assert2(0);
            code = 0;
        }

        ff_dlog(((void*)0), "%d: %2d %2d %2d %d %d -> %d\n", j,
                sf[0], sf[1], sf[2], d1, d2, code);
        scale_code[j] = code;
        sf += 3;
    }
}
