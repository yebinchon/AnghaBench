
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_5__ {int mb_width; int b8_stride; int quarter_sample; TYPE_1__* avctx; } ;
struct TYPE_4__ {scalar_t__ codec_id; } ;
typedef TYPE_2__ ERContext ;


 scalar_t__ AV_CODEC_ID_H264 ;
 int av_assert0 (int ) ;

__attribute__((used)) static void set_mv_strides(ERContext *s, ptrdiff_t *mv_step, ptrdiff_t *stride)
{
    if (s->avctx->codec_id == AV_CODEC_ID_H264) {
        av_assert0(s->quarter_sample);
        *mv_step = 4;
        *stride = s->mb_width * 4;
    } else {
        *mv_step = 2;
        *stride = s->b8_stride;
    }
}
