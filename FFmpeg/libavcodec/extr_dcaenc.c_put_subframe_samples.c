
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** abits; int** quant_index_sel; scalar_t__*** quantized; int pb; } ;
typedef TYPE_1__ DCAEncContext ;


 int DCA_CODE_BOOKS ;
 int av_assert0 (int) ;
 int* bit_consumption ;
 int* ff_dca_quant_index_group_size ;
 int* ff_dca_quant_levels ;
 int ff_dca_vlc_enc_quant (int *,scalar_t__*,int,int,int) ;
 int put_bits (int *,int,int) ;
 int put_sbits (int *,int,scalar_t__) ;

__attribute__((used)) static void put_subframe_samples(DCAEncContext *c, int ss, int band, int ch)
{
    int i, j, sum, bits, sel;
    if (c->abits[ch][band] <= DCA_CODE_BOOKS) {
        av_assert0(c->abits[ch][band] > 0);
        sel = c->quant_index_sel[ch][c->abits[ch][band] - 1];

        if (sel < ff_dca_quant_index_group_size[c->abits[ch][band] - 1]) {
            ff_dca_vlc_enc_quant(&c->pb, &c->quantized[ch][band][ss * 8], 8,
                                 sel, c->abits[ch][band] - 1);
            return;
        }


        if (c->abits[ch][band] <= 7) {
            for (i = 0; i < 8; i += 4) {
                sum = 0;
                for (j = 3; j >= 0; j--) {
                    sum *= ff_dca_quant_levels[c->abits[ch][band]];
                    sum += c->quantized[ch][band][ss * 8 + i + j];
                    sum += (ff_dca_quant_levels[c->abits[ch][band]] - 1) / 2;
                }
                put_bits(&c->pb, bit_consumption[c->abits[ch][band]] / 4, sum);
            }
            return;
        }
    }

    for (i = 0; i < 8; i++) {
        bits = bit_consumption[c->abits[ch][band]] / 16;
        put_sbits(&c->pb, bits, c->quantized[ch][band][ss * 8 + i]);
    }
}
