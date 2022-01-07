
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {int num; int den; } ;
struct TYPE_9__ {int custom_pcf; int picture_number; int width; int height; scalar_t__ pict_type; int obmc; int qscale; int umvplus; int h263_aic; int loop_filter; int h263_slice_structured; int alt_inter_vlc; int modified_quant; int no_rounding; int aspect_ratio_info; scalar_t__ mb_x; scalar_t__ mb_y; int pb; TYPE_2__* avctx; scalar_t__ h263_plus; int ptr_lastgob; } ;
struct TYPE_7__ {long long num; long long den; } ;
struct TYPE_8__ {TYPE_6__ sample_aspect_ratio; TYPE_1__ time_base; } ;
typedef TYPE_3__ MpegEncContext ;


 scalar_t__ AV_PICTURE_TYPE_P ;
 int FFABS (long long) ;
 int FF_ARRAY_ELEMS (int ) ;
 int FF_ASPECT_EXTENDED ;
 int INT_MAX ;
 int av_assert1 (int) ;
 int av_clip (int,int,int) ;
 int avpriv_align_put_bits (int *) ;
 int ff_h263_aspect_to_info (TYPE_6__) ;
 int ff_h263_encode_mba (TYPE_3__*) ;
 int ff_h263_format ;
 int ff_match_2uint16 (int ,int ,int,int) ;
 int put_bits (int *,int,int) ;
 int put_bits_ptr (int *) ;
 int put_sbits (int *,int,int) ;

void ff_h263_encode_picture_header(MpegEncContext * s, int picture_number)
{
    int format, coded_frame_rate, coded_frame_rate_base, i, temp_ref;
    int best_clock_code=1;
    int best_divisor=60;
    int best_error= INT_MAX;

    if(s->h263_plus){
        for(i=0; i<2; i++){
            int div, error;
            div= (s->avctx->time_base.num*1800000LL + 500LL*s->avctx->time_base.den) / ((1000LL+i)*s->avctx->time_base.den);
            div= av_clip(div, 1, 127);
            error= FFABS(s->avctx->time_base.num*1800000LL - (1000LL+i)*s->avctx->time_base.den*div);
            if(error < best_error){
                best_error= error;
                best_divisor= div;
                best_clock_code= i;
            }
        }
    }
    s->custom_pcf= best_clock_code!=1 || best_divisor!=60;
    coded_frame_rate= 1800000;
    coded_frame_rate_base= (1000+best_clock_code)*best_divisor;

    avpriv_align_put_bits(&s->pb);


    s->ptr_lastgob = put_bits_ptr(&s->pb);
    put_bits(&s->pb, 22, 0x20);
    temp_ref= s->picture_number * (int64_t)coded_frame_rate * s->avctx->time_base.num /
                         (coded_frame_rate_base * (int64_t)s->avctx->time_base.den);
    put_sbits(&s->pb, 8, temp_ref);

    put_bits(&s->pb, 1, 1);
    put_bits(&s->pb, 1, 0);
    put_bits(&s->pb, 1, 0);
    put_bits(&s->pb, 1, 0);
    put_bits(&s->pb, 1, 0);

    format = ff_match_2uint16(ff_h263_format, FF_ARRAY_ELEMS(ff_h263_format), s->width, s->height);
    if (!s->h263_plus) {

        put_bits(&s->pb, 3, format);
        put_bits(&s->pb, 1, (s->pict_type == AV_PICTURE_TYPE_P));



        put_bits(&s->pb, 1, 0);
        put_bits(&s->pb, 1, 0);
        put_bits(&s->pb, 1, s->obmc);
        put_bits(&s->pb, 1, 0);
        put_bits(&s->pb, 5, s->qscale);
        put_bits(&s->pb, 1, 0);
    } else {
        int ufep=1;



        put_bits(&s->pb, 3, 7);
        put_bits(&s->pb,3,ufep);
        if (format == 8)
            put_bits(&s->pb,3,6);
        else
            put_bits(&s->pb, 3, format);

        put_bits(&s->pb,1, s->custom_pcf);
        put_bits(&s->pb,1, s->umvplus);
        put_bits(&s->pb,1,0);
        put_bits(&s->pb,1,s->obmc);
        put_bits(&s->pb,1,s->h263_aic);
        put_bits(&s->pb,1,s->loop_filter);
        put_bits(&s->pb,1,s->h263_slice_structured);
        put_bits(&s->pb,1,0);
        put_bits(&s->pb,1,0);
        put_bits(&s->pb,1,s->alt_inter_vlc);
        put_bits(&s->pb,1,s->modified_quant);
        put_bits(&s->pb,1,1);
        put_bits(&s->pb,3,0);

        put_bits(&s->pb, 3, s->pict_type == AV_PICTURE_TYPE_P);

        put_bits(&s->pb,1,0);
        put_bits(&s->pb,1,0);
        put_bits(&s->pb,1,s->no_rounding);
        put_bits(&s->pb,2,0);
        put_bits(&s->pb,1,1);


        put_bits(&s->pb, 1, 0);

        if (format == 8) {

            s->aspect_ratio_info= ff_h263_aspect_to_info(s->avctx->sample_aspect_ratio);

            put_bits(&s->pb,4,s->aspect_ratio_info);
            put_bits(&s->pb,9,(s->width >> 2) - 1);
            put_bits(&s->pb,1,1);
            put_bits(&s->pb,9,(s->height >> 2));
            if (s->aspect_ratio_info == FF_ASPECT_EXTENDED){
                put_bits(&s->pb, 8, s->avctx->sample_aspect_ratio.num);
                put_bits(&s->pb, 8, s->avctx->sample_aspect_ratio.den);
            }
        }
        if(s->custom_pcf){
            if(ufep){
                put_bits(&s->pb, 1, best_clock_code);
                put_bits(&s->pb, 7, best_divisor);
            }
            put_sbits(&s->pb, 2, temp_ref>>8);
        }


        if (s->umvplus)


            put_bits(&s->pb,2,1);
        if(s->h263_slice_structured)
            put_bits(&s->pb,2,0);

        put_bits(&s->pb, 5, s->qscale);
    }

    put_bits(&s->pb, 1, 0);

    if(s->h263_slice_structured){
        put_bits(&s->pb, 1, 1);

        av_assert1(s->mb_x == 0 && s->mb_y == 0);
        ff_h263_encode_mba(s);

        put_bits(&s->pb, 1, 1);
    }
}
