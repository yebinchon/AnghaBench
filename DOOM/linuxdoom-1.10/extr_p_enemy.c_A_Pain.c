
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* info; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_5__ {scalar_t__ painsound; } ;


 int S_StartSound (TYPE_2__*,scalar_t__) ;

void A_Pain (mobj_t* actor)
{
    if (actor->info->painsound)
 S_StartSound (actor, actor->info->painsound);
}
