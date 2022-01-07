
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pack; int lfo_cnt; int eg_timer; int eg_cnt; } ;
struct TYPE_4__ {int lfo_cnt; int eg_timer; int eg_cnt; } ;
struct TYPE_5__ {TYPE_1__ OPN; } ;


 TYPE_3__ crct ;
 int g_lfo_ampm ;
 TYPE_2__ ym2612 ;

__attribute__((used)) static void chan_render_finish(void)
{
 ym2612.OPN.eg_cnt = crct.eg_cnt;
 ym2612.OPN.eg_timer = crct.eg_timer;
 g_lfo_ampm = crct.pack >> 16;
 ym2612.OPN.lfo_cnt = crct.lfo_cnt;
}
