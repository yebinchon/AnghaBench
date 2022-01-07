
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slot_mask; int * CH; } ;


 int reset_channels (int *) ;
 TYPE_1__ ym2612 ;

void YM2612PicoStateLoad_(void)
{
 reset_channels( &ym2612.CH[0] );
 ym2612.slot_mask = 0xffffff;
}
