
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int member_1; int re; int member_0; int im; } ;
struct TYPE_6__ {TYPE_2__* exptab; } ;
typedef TYPE_1__ MDCT15Context ;
typedef TYPE_2__ FFTComplex ;


 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static void perm_twiddles(MDCT15Context *s)
{
    int k;
    FFTComplex tmp[30];


    s->exptab[60].re = s->exptab[60].im = s->exptab[19].re;
    s->exptab[61].re = s->exptab[61].im = s->exptab[19].im;
    s->exptab[62].re = s->exptab[62].im = s->exptab[20].re;
    s->exptab[63].re = s->exptab[63].im = s->exptab[20].im;


    for (k = 0; k < 5; k++) {
        tmp[6*k + 0] = s->exptab[k + 0];
        tmp[6*k + 2] = s->exptab[k + 5];
        tmp[6*k + 4] = s->exptab[k + 10];

        tmp[6*k + 1] = s->exptab[2 * (k + 0)];
        tmp[6*k + 3] = s->exptab[2 * (k + 5)];
        tmp[6*k + 5] = s->exptab[2 * k + 5 ];
    }

    for (k = 0; k < 6; k++) {
        FFTComplex ac_exp[] = {
            { tmp[6*1 + k].re, tmp[6*1 + k].re },
            { tmp[6*2 + k].re, tmp[6*2 + k].re },
            { tmp[6*3 + k].re, tmp[6*3 + k].re },
            { tmp[6*4 + k].re, tmp[6*4 + k].re },
            { tmp[6*1 + k].im, -tmp[6*1 + k].im },
            { tmp[6*2 + k].im, -tmp[6*2 + k].im },
            { tmp[6*3 + k].im, -tmp[6*3 + k].im },
            { tmp[6*4 + k].im, -tmp[6*4 + k].im },
        };
        memcpy(s->exptab + 8*k, ac_exp, 8*sizeof(FFTComplex));
    }


    for (k = 0; k < 3; k++) {
        FFTComplex dc_exp[] = {
            { tmp[2*k + 0].re, -tmp[2*k + 0].im },
            { tmp[2*k + 0].im, tmp[2*k + 0].re },
            { tmp[2*k + 1].re, -tmp[2*k + 1].im },
            { tmp[2*k + 1].im, tmp[2*k + 1].re },
        };
        memcpy(s->exptab + 8*6 + 4*k, dc_exp, 4*sizeof(FFTComplex));
    }
}
