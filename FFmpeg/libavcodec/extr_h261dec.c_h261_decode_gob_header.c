
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int err_recognition; } ;
struct TYPE_5__ {scalar_t__ qscale; int mb_height; TYPE_4__* avctx; int gb; } ;
struct TYPE_6__ {int gob_number; scalar_t__ mba_diff; scalar_t__ current_mba; scalar_t__ gob_start_code_skipped; TYPE_1__ s; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ H261Context ;


 int AVERROR_INVALIDDATA ;
 int AV_EF_BITSTREAM ;
 int AV_EF_COMPLIANT ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_4__*,int ,char*) ;
 void* get_bits (int *,int) ;
 unsigned int show_bits (int *,int) ;
 scalar_t__ skip_1stop_8data_bits (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int h261_decode_gob_header(H261Context *h)
{
    unsigned int val;
    MpegEncContext *const s = &h->s;

    if (!h->gob_start_code_skipped) {

        val = show_bits(&s->gb, 15);
        if (val)
            return -1;


        skip_bits(&s->gb, 16);
    }

    h->gob_start_code_skipped = 0;

    h->gob_number = get_bits(&s->gb, 4);
    s->qscale = get_bits(&s->gb, 5);


    if (s->mb_height == 18) {
        if ((h->gob_number <= 0) || (h->gob_number > 12))
            return -1;
    } else {
        if ((h->gob_number != 1) && (h->gob_number != 3) &&
            (h->gob_number != 5))
            return -1;
    }


    if (skip_1stop_8data_bits(&s->gb) < 0)
        return AVERROR_INVALIDDATA;

    if (s->qscale == 0) {
        av_log(s->avctx, AV_LOG_ERROR, "qscale has forbidden 0 value\n");
        if (s->avctx->err_recognition & (AV_EF_BITSTREAM | AV_EF_COMPLIANT))
            return -1;
    }





    h->current_mba = 0;
    h->mba_diff = 0;

    return 0;
}
