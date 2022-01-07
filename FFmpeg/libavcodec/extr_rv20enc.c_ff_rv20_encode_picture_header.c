
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pict_type; scalar_t__ qscale; scalar_t__ no_rounding; int f_code; scalar_t__ unrestricted_mv; scalar_t__ alt_inter_vlc; scalar_t__ umvplus; int modified_quant; int loop_filter; int h263_aic; int c_dc_scale_table; int y_dc_scale_table; int pb; scalar_t__ mb_y; scalar_t__ mb_x; } ;
typedef TYPE_1__ MpegEncContext ;


 scalar_t__ AV_PICTURE_TYPE_I ;
 int av_assert0 (int) ;
 int ff_aic_dc_scale_table ;
 int ff_h263_encode_mba (TYPE_1__*) ;
 int ff_mpeg1_dc_scale_table ;
 int put_bits (int *,int,scalar_t__) ;
 int put_sbits (int *,int,int) ;

void ff_rv20_encode_picture_header(MpegEncContext *s, int picture_number){
    put_bits(&s->pb, 2, s->pict_type);
    put_bits(&s->pb, 1, 0);
    put_bits(&s->pb, 5, s->qscale);

    put_sbits(&s->pb, 8, picture_number);
    s->mb_x= s->mb_y= 0;
    ff_h263_encode_mba(s);

    put_bits(&s->pb, 1, s->no_rounding);

    av_assert0(s->f_code == 1);
    av_assert0(s->unrestricted_mv == 0);
    av_assert0(s->alt_inter_vlc == 0);
    av_assert0(s->umvplus == 0);
    av_assert0(s->modified_quant==1);
    av_assert0(s->loop_filter==1);

    s->h263_aic= s->pict_type == AV_PICTURE_TYPE_I;
    if(s->h263_aic){
        s->y_dc_scale_table=
        s->c_dc_scale_table= ff_aic_dc_scale_table;
    }else{
        s->y_dc_scale_table=
        s->c_dc_scale_table= ff_mpeg1_dc_scale_table;
    }
}
