
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int angle; TYPE_1__* target; int y; int x; int flags; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_4__ {int flags; int y; int x; } ;


 int MF_AMBUSH ;
 int MF_SHADOW ;
 int P_Random () ;
 int R_PointToAngle2 (int ,int ,int ,int ) ;

void A_FaceTarget (mobj_t* actor)
{
    if (!actor->target)
 return;

    actor->flags &= ~MF_AMBUSH;

    actor->angle = R_PointToAngle2 (actor->x,
        actor->y,
        actor->target->x,
        actor->target->y);

    if (actor->target->flags & MF_SHADOW)
 actor->angle += (P_Random()-P_Random())<<21;
}
