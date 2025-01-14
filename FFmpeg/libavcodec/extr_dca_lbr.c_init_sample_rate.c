
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int limited_range; int bit_rate_scaled; int nchannels_total; int freq_range; int nsubbands; int* sb_scf; int lfe_scale; int * window; int imdct; } ;
typedef TYPE_1__ DCALbrDecoder ;


 double INT_MAX ;
 int * ff_dca_long_window ;
 int ff_mdct_end (int *) ;
 scalar_t__ ff_mdct_init (int *,int,int,double) ;
 double sqrt (int) ;

__attribute__((used)) static int init_sample_rate(DCALbrDecoder *s)
{
    double scale = (-1.0 / (1 << 17)) * sqrt(1 << (2 - s->limited_range));
    int i, br_per_ch = s->bit_rate_scaled / s->nchannels_total;

    ff_mdct_end(&s->imdct);

    if (ff_mdct_init(&s->imdct, s->freq_range + 6, 1, scale) < 0)
        return -1;

    for (i = 0; i < 32 << s->freq_range; i++)
        s->window[i] = ff_dca_long_window[i << (2 - s->freq_range)];

    if (br_per_ch < 14000)
        scale = 0.85;
    else if (br_per_ch < 32000)
        scale = (br_per_ch - 14000) * (1.0 / 120000) + 0.85;
    else
        scale = 1.0;

    scale *= 1.0 / INT_MAX;

    for (i = 0; i < s->nsubbands; i++) {
        if (i < 2)
            s->sb_scf[i] = 0;
        else if (i < 5)
            s->sb_scf[i] = (i - 1) * 0.25 * 0.785 * scale;
        else
            s->sb_scf[i] = 0.785 * scale;
    }

    s->lfe_scale = (16 << s->freq_range) * 0.0000078265894;

    return 0;
}
