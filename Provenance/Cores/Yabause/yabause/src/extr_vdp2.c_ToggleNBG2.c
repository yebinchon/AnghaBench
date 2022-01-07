
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disptoggle; } ;


 TYPE_1__ Vdp2External ;

void ToggleNBG2(void)
{
   Vdp2External.disptoggle ^= 0x4;
}
