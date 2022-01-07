
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fullband_channels; int* bit_allocation_sel; int** quant_index_sel; int pb; } ;
typedef TYPE_1__ DCAEncContext ;


 int DCAENC_SUBBANDS ;
 int DCA_CODE_BOOKS ;
 int SUBFRAMES ;
 int* ff_dca_quant_index_group_size ;
 int* ff_dca_quant_index_sel_nbits ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void put_primary_audio_header(DCAEncContext *c)
{
    int ch, i;

    put_bits(&c->pb, 4, SUBFRAMES - 1);


    put_bits(&c->pb, 3, c->fullband_channels - 1);


    for (ch = 0; ch < c->fullband_channels; ch++)
        put_bits(&c->pb, 5, DCAENC_SUBBANDS - 2);


    for (ch = 0; ch < c->fullband_channels; ch++)
        put_bits(&c->pb, 5, DCAENC_SUBBANDS - 1);


    for (ch = 0; ch < c->fullband_channels; ch++)
        put_bits(&c->pb, 3, 0);


    for (ch = 0; ch < c->fullband_channels; ch++)
        put_bits(&c->pb, 2, 0);


    for (ch = 0; ch < c->fullband_channels; ch++)
        put_bits(&c->pb, 3, 6);


    for (ch = 0; ch < c->fullband_channels; ch++)
        put_bits(&c->pb, 3, c->bit_allocation_sel[ch]);


    for (i = 0; i < DCA_CODE_BOOKS; i++)
        for (ch = 0; ch < c->fullband_channels; ch++)
            put_bits(&c->pb, ff_dca_quant_index_sel_nbits[i], c->quant_index_sel[ch][i]);


    for (i = 0; i < DCA_CODE_BOOKS; i++)
        for (ch = 0; ch < c->fullband_channels; ch++)
            if (c->quant_index_sel[ch][i] < ff_dca_quant_index_group_size[i])
                put_bits(&c->pb, 2, 0);


}
