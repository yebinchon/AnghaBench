
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t statenum_t ;
struct TYPE_8__ {int (* acp1 ) (TYPE_3__*) ;} ;
struct TYPE_9__ {size_t nextstate; TYPE_1__ action; int frame; int sprite; int tics; } ;
typedef TYPE_2__ state_t ;
struct TYPE_10__ {int frame; int sprite; int tics; TYPE_2__* state; } ;
typedef TYPE_3__ mobj_t ;
typedef int boolean ;


 int P_RemoveMobj (TYPE_3__*) ;
 size_t S_NULL ;
 TYPE_2__* states ;
 int stub1 (TYPE_3__*) ;

boolean
P_SetMobjState
( mobj_t* mobj,
  statenum_t state )
{
    state_t* st;

    do
    {
 if (state == S_NULL)
 {
     mobj->state = (state_t *) S_NULL;
     P_RemoveMobj (mobj);
     return 0;
 }

 st = &states[state];
 mobj->state = st;
 mobj->tics = st->tics;
 mobj->sprite = st->sprite;
 mobj->frame = st->frame;



 if (st->action.acp1)
     st->action.acp1(mobj);

 state = st->nextstate;
    } while (!mobj->tics);

    return 1;
}
