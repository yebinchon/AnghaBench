
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ mobj_t ;


 int MF_SOLID ;

void A_Fall (mobj_t *actor)
{

    actor->flags &= ~MF_SOLID;



}
