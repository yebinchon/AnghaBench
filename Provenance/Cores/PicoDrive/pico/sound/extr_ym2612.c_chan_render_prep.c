
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lfo_inc; int eg_timer_add; } ;
struct TYPE_4__ {int lfo_inc; int eg_timer_add; } ;
struct TYPE_5__ {TYPE_1__ OPN; } ;


 TYPE_3__ crct ;
 TYPE_2__ ym2612 ;

__attribute__((used)) static void chan_render_prep(void)
{
 crct.eg_timer_add = ym2612.OPN.eg_timer_add;
 crct.lfo_inc = ym2612.OPN.lfo_inc;
}
