
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ angle; } ;
typedef TYPE_1__ mobj_t ;


 scalar_t__ ANG180 ;
 scalar_t__ ANG270 ;
 scalar_t__ ANG90 ;
 int A_Fall (TYPE_1__*) ;
 int A_PainShootSkull (TYPE_1__*,scalar_t__) ;

void A_PainDie (mobj_t* actor)
{
    A_Fall (actor);
    A_PainShootSkull (actor, actor->angle+ANG90);
    A_PainShootSkull (actor, actor->angle+ANG180);
    A_PainShootSkull (actor, actor->angle+ANG270);
}
