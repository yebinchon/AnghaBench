
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int has_b_frames; } ;
struct TYPE_8__ {int nb_decoded_frames; TYPE_1__* internal; int info; TYPE_2__* codecpar; } ;
struct TYPE_7__ {scalar_t__ codec_id; } ;
struct TYPE_6__ {TYPE_5__* avctx; } ;
typedef TYPE_3__ AVStream ;


 scalar_t__ AV_CODEC_ID_H264 ;
 int avpriv_h264_has_num_reorder_frames (TYPE_5__*) ;

__attribute__((used)) static int has_decode_delay_been_guessed(AVStream *st)
{
    if (st->codecpar->codec_id != AV_CODEC_ID_H264) return 1;
    if (!st->info)
        return 1;





    if (st->internal->avctx->has_b_frames<3)
        return st->nb_decoded_frames >= 7;
    else if (st->internal->avctx->has_b_frames<4)
        return st->nb_decoded_frames >= 18;
    else
        return st->nb_decoded_frames >= 20;
}
