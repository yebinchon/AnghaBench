
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pict_type; TYPE_2__* avctx; int time; int time_base; int last_time_base; } ;
struct TYPE_6__ {int den; } ;
struct TYPE_7__ {TYPE_1__ time_base; } ;
typedef TYPE_3__ MpegEncContext ;


 scalar_t__ AV_PICTURE_TYPE_B ;
 int FFUDIV (int ,int ) ;
 int ff_mpeg4_init_direct_mv (TYPE_3__*) ;

void ff_set_mpeg4_time(MpegEncContext *s)
{
    if (s->pict_type == AV_PICTURE_TYPE_B) {
        ff_mpeg4_init_direct_mv(s);
    } else {
        s->last_time_base = s->time_base;
        s->time_base = FFUDIV(s->time, s->avctx->time_base.den);
    }
}
