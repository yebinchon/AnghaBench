
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ acp1; } ;
struct TYPE_10__ {TYPE_1__ function; struct TYPE_10__* next; } ;
typedef TYPE_2__ thinker_t ;
struct TYPE_11__ {scalar_t__ type; scalar_t__ health; } ;
typedef TYPE_3__ mobj_t ;
struct TYPE_12__ {int tag; } ;
typedef TYPE_4__ line_t ;
typedef scalar_t__ actionf_p1 ;


 int A_Fall (TYPE_3__*) ;
 int EV_DoDoor (TYPE_4__*,int ) ;
 scalar_t__ P_MobjThinker ;
 int open ;
 TYPE_2__ thinkercap ;

void A_KeenDie (mobj_t* mo)
{
    thinker_t* th;
    mobj_t* mo2;
    line_t junk;

    A_Fall (mo);



    for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
    {
 if (th->function.acp1 != (actionf_p1)P_MobjThinker)
     continue;

 mo2 = (mobj_t *)th;
 if (mo2 != mo
     && mo2->type == mo->type
     && mo2->health > 0)
 {

     return;
 }
    }

    junk.tag = 666;
    EV_DoDoor(&junk,open);
}
