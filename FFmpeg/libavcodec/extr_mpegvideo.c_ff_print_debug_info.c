
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int quarter_sample; int mb_stride; int mb_height; int mb_width; int low_delay; int mbskip_table; int avctx; } ;
struct TYPE_5__ {int motion_val; int qscale_table; int mb_type; } ;
typedef TYPE_1__ Picture ;
typedef TYPE_2__ MpegEncContext ;
typedef int AVFrame ;


 int ff_print_debug_info2 (int ,int *,int ,int ,int ,int ,int *,int ,int ,int ,int ) ;

void ff_print_debug_info(MpegEncContext *s, Picture *p, AVFrame *pict)
{
    ff_print_debug_info2(s->avctx, pict, s->mbskip_table, p->mb_type,
                         p->qscale_table, p->motion_val, &s->low_delay,
                         s->mb_width, s->mb_height, s->mb_stride, s->quarter_sample);
}
