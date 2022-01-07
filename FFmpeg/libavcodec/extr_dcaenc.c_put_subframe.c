
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fullband_channels; int** prediction_mode; int* bit_allocation_sel; int** abits; int** scale_factor; int lfe_scale_factor; int pb; int lfe_quant; int * downsampled_lfe; scalar_t__ lfe_channel; } ;
typedef TYPE_1__ DCAEncContext ;


 int DCAENC_SUBBANDS ;
 int DCA_LFE_SAMPLES ;
 int SUBSUBFRAMES ;
 int ff_dca_vlc_enc_alloc (int *,int*,int,int) ;
 int put_bits (int *,int,int) ;
 int put_subframe_samples (TYPE_1__*,int,int,int) ;
 int quantize_value (int ,int ) ;

__attribute__((used)) static void put_subframe(DCAEncContext *c, int subframe)
{
    int i, band, ss, ch;


    put_bits(&c->pb, 2, SUBSUBFRAMES -1);


    put_bits(&c->pb, 3, 0);


    for (ch = 0; ch < c->fullband_channels; ch++)
        for (band = 0; band < DCAENC_SUBBANDS; band++)
            put_bits(&c->pb, 1, !(c->prediction_mode[ch][band] == -1));


    for (ch = 0; ch < c->fullband_channels; ch++)
        for (band = 0; band < DCAENC_SUBBANDS; band++)
            if (c->prediction_mode[ch][band] >= 0)
                put_bits(&c->pb, 12, c->prediction_mode[ch][band]);


    for (ch = 0; ch < c->fullband_channels; ch++) {
        if (c->bit_allocation_sel[ch] == 6) {
            for (band = 0; band < DCAENC_SUBBANDS; band++) {
                put_bits(&c->pb, 5, c->abits[ch][band]);
            }
        } else {
            ff_dca_vlc_enc_alloc(&c->pb, c->abits[ch], DCAENC_SUBBANDS,
                                 c->bit_allocation_sel[ch]);
        }
    }

    if (SUBSUBFRAMES > 1) {

        for (ch = 0; ch < c->fullband_channels; ch++)
            for (band = 0; band < DCAENC_SUBBANDS; band++)
                if (c->abits[ch][band])
                    put_bits(&c->pb, 1, 0);
    }


    for (ch = 0; ch < c->fullband_channels; ch++)
        for (band = 0; band < DCAENC_SUBBANDS; band++)
            if (c->abits[ch][band])
                put_bits(&c->pb, 7, c->scale_factor[ch][band]);
    if (c->lfe_channel) {
        for (i = 0; i < DCA_LFE_SAMPLES; i++)
            put_bits(&c->pb, 8, quantize_value(c->downsampled_lfe[i], c->lfe_quant) & 0xff);
        put_bits(&c->pb, 8, c->lfe_scale_factor);
    }


    for (ss = 0; ss < SUBSUBFRAMES ; ss++)
        for (ch = 0; ch < c->fullband_channels; ch++)
            for (band = 0; band < DCAENC_SUBBANDS; band++)
                if (c->abits[ch][band])
                    put_subframe_samples(c, ss, band, ch);


    put_bits(&c->pb, 16, 0xffff);
}
