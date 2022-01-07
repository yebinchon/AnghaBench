
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fullband_channels; int downsampled_lfe; void* lfe_peak_cb; scalar_t__ lfe_channel; int ** subband; void*** peak_cb; } ;
typedef TYPE_1__ DCAEncContext ;


 int DCA_LFE_SAMPLES ;
 int SUBBAND_SAMPLES ;
 void* find_peak (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void find_peaks(DCAEncContext *c)
{
    int band, ch;

    for (ch = 0; ch < c->fullband_channels; ch++) {
        for (band = 0; band < 32; band++)
            c->peak_cb[ch][band] = find_peak(c, c->subband[ch][band],
                                             SUBBAND_SAMPLES);
    }

    if (c->lfe_channel)
        c->lfe_peak_cb = find_peak(c, c->downsampled_lfe, DCA_LFE_SAMPLES);
}
