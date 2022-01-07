
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ total_bits; TYPE_2__* avctx; } ;
struct TYPE_5__ {int den; scalar_t__ num; } ;
struct TYPE_6__ {int bit_rate; int ticks_per_frame; double frame_number; scalar_t__ global_quality; TYPE_1__ time_base; } ;
typedef TYPE_3__ FlashSV2Context ;


 scalar_t__ use15_7_threshold ;

__attribute__((used)) static int optimum_use15_7(FlashSV2Context * s)
{

    double ideal = ((double)(s->avctx->bit_rate * s->avctx->time_base.den * s->avctx->ticks_per_frame)) /
        ((double) s->avctx->time_base.num) * s->avctx->frame_number;
    if (ideal + use15_7_threshold < s->total_bits) {
        return 1;
    } else {
        return 0;
    }



}
