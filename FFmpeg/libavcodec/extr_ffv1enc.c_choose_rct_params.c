
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint32_t ;
typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_3__ {int bits_per_raw_sample; int* sample_buffer; int slice_rct_by_coef; int slice_rct_ry_coef; } ;
typedef TYPE_1__ FFV1Context ;


 scalar_t__ FFABS (int) ;
 int NB_Y_COEFF ;

__attribute__((used)) static void choose_rct_params(FFV1Context *fs, const uint8_t *src[3], const int stride[3], int w, int h)
{

    static const int rct_y_coeff[15][2] = {
        {0, 0},
        {1, 1},
        {2, 2},
        {0, 2},
        {2, 0},
        {4, 0},
        {0, 4},

        {0, 3},
        {3, 0},
        {3, 1},
        {1, 3},
        {1, 2},
        {2, 1},
        {0, 1},
        {1, 0},
    };

    int stat[15] = {0};
    int x, y, i, p, best;
    int16_t *sample[3];
    int lbd = fs->bits_per_raw_sample <= 8;

    for (y = 0; y < h; y++) {
        int lastr=0, lastg=0, lastb=0;
        for (p = 0; p < 3; p++)
            sample[p] = fs->sample_buffer + p*w;

        for (x = 0; x < w; x++) {
            int b, g, r;
            int ab, ag, ar;
            if (lbd) {
                unsigned v = *((const uint32_t*)(src[0] + x*4 + stride[0]*y));
                b = v & 0xFF;
                g = (v >> 8) & 0xFF;
                r = (v >> 16) & 0xFF;
            } else {
                b = *((const uint16_t*)(src[0] + x*2 + stride[0]*y));
                g = *((const uint16_t*)(src[1] + x*2 + stride[1]*y));
                r = *((const uint16_t*)(src[2] + x*2 + stride[2]*y));
            }

            ar = r - lastr;
            ag = g - lastg;
            ab = b - lastb;
            if (x && y) {
                int bg = ag - sample[0][x];
                int bb = ab - sample[1][x];
                int br = ar - sample[2][x];

                br -= bg;
                bb -= bg;

                for (i = 0; i<15; i++) {
                    stat[i] += FFABS(bg + ((br*rct_y_coeff[i][0] + bb*rct_y_coeff[i][1])>>2));
                }

            }
            sample[0][x] = ag;
            sample[1][x] = ab;
            sample[2][x] = ar;

            lastr = r;
            lastg = g;
            lastb = b;
        }
    }

    best = 0;
    for (i=1; i<15; i++) {
        if (stat[i] < stat[best])
            best = i;
    }

    fs->slice_rct_by_coef = rct_y_coeff[best][1];
    fs->slice_rct_ry_coef = rct_y_coeff[best][0];
}
