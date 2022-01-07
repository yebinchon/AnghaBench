
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * ac_vlc_4; int * ac_vlc_3; int * ac_vlc_2; int * ac_vlc_1; int * fragment_height; int * fragment_width; int * fragment_start; TYPE_1__* avctx; int * dc_vlc; int dct_tokens_base; int ** dct_tokens; } ;
typedef TYPE_2__ Vp3DecodeContext ;
typedef int VLC ;
struct TYPE_6__ {int flags; } ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_CODEC_FLAG_GRAY ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int reverse_dc_prediction (TYPE_2__*,int ,int ,int ) ;
 int unpack_vlcs (TYPE_2__*,int *,int *,int,int,int) ;

__attribute__((used)) static int unpack_dct_coeffs(Vp3DecodeContext *s, GetBitContext *gb)
{
    int i;
    int dc_y_table;
    int dc_c_table;
    int ac_y_table;
    int ac_c_table;
    int residual_eob_run = 0;
    VLC *y_tables[64];
    VLC *c_tables[64];

    s->dct_tokens[0][0] = s->dct_tokens_base;

    if (get_bits_left(gb) < 16)
        return AVERROR_INVALIDDATA;


    dc_y_table = get_bits(gb, 4);
    dc_c_table = get_bits(gb, 4);


    residual_eob_run = unpack_vlcs(s, gb, &s->dc_vlc[dc_y_table], 0,
                                   0, residual_eob_run);
    if (residual_eob_run < 0)
        return residual_eob_run;
    if (get_bits_left(gb) < 8)
        return AVERROR_INVALIDDATA;


    reverse_dc_prediction(s, 0, s->fragment_width[0], s->fragment_height[0]);


    residual_eob_run = unpack_vlcs(s, gb, &s->dc_vlc[dc_c_table], 0,
                                   1, residual_eob_run);
    if (residual_eob_run < 0)
        return residual_eob_run;
    residual_eob_run = unpack_vlcs(s, gb, &s->dc_vlc[dc_c_table], 0,
                                   2, residual_eob_run);
    if (residual_eob_run < 0)
        return residual_eob_run;


    if (!(s->avctx->flags & AV_CODEC_FLAG_GRAY)) {
        reverse_dc_prediction(s, s->fragment_start[1],
                              s->fragment_width[1], s->fragment_height[1]);
        reverse_dc_prediction(s, s->fragment_start[2],
                              s->fragment_width[1], s->fragment_height[1]);
    }

    if (get_bits_left(gb) < 8)
        return AVERROR_INVALIDDATA;

    ac_y_table = get_bits(gb, 4);
    ac_c_table = get_bits(gb, 4);


    for (i = 1; i <= 5; i++) {
        y_tables[i] = &s->ac_vlc_1[ac_y_table];
        c_tables[i] = &s->ac_vlc_1[ac_c_table];
    }
    for (i = 6; i <= 14; i++) {
        y_tables[i] = &s->ac_vlc_2[ac_y_table];
        c_tables[i] = &s->ac_vlc_2[ac_c_table];
    }
    for (i = 15; i <= 27; i++) {
        y_tables[i] = &s->ac_vlc_3[ac_y_table];
        c_tables[i] = &s->ac_vlc_3[ac_c_table];
    }
    for (i = 28; i <= 63; i++) {
        y_tables[i] = &s->ac_vlc_4[ac_y_table];
        c_tables[i] = &s->ac_vlc_4[ac_c_table];
    }


    for (i = 1; i <= 63; i++) {
        residual_eob_run = unpack_vlcs(s, gb, y_tables[i], i,
                                       0, residual_eob_run);
        if (residual_eob_run < 0)
            return residual_eob_run;

        residual_eob_run = unpack_vlcs(s, gb, c_tables[i], i,
                                       1, residual_eob_run);
        if (residual_eob_run < 0)
            return residual_eob_run;
        residual_eob_run = unpack_vlcs(s, gb, c_tables[i], i,
                                       2, residual_eob_run);
        if (residual_eob_run < 0)
            return residual_eob_run;
    }

    return 0;
}
