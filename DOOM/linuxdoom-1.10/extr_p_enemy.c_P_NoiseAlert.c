
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* subsector; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_6__ {int sector; } ;


 int P_RecursiveSound (int ,int ) ;
 TYPE_2__* soundtarget ;
 int validcount ;

void
P_NoiseAlert
( mobj_t* target,
  mobj_t* emmiter )
{
    soundtarget = target;
    validcount++;
    P_RecursiveSound (emmiter->subsector->sector, 0);
}
