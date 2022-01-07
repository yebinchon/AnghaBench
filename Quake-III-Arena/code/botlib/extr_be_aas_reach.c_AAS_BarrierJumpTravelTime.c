
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double phys_jumpvel; double phys_gravity; } ;


 TYPE_1__ aassettings ;

unsigned short int AAS_BarrierJumpTravelTime(void)
{
 return aassettings.phys_jumpvel / (aassettings.phys_gravity * 0.1);
}
