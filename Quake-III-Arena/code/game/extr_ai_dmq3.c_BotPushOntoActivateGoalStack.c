
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* activategoalheap; TYPE_2__* activatestack; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_activategoal_t ;
struct TYPE_5__ {int inuse; float justused_time; struct TYPE_5__* next; } ;


 int FloatTime () ;
 int MAX_ACTIVATESTACK ;
 int memcpy (TYPE_2__*,int *,int) ;
 int qfalse ;
 int qtrue ;

int BotPushOntoActivateGoalStack(bot_state_t *bs, bot_activategoal_t *activategoal) {
 int i, best;
 float besttime;

 best = -1;
 besttime = FloatTime() + 9999;

 for (i = 0; i < MAX_ACTIVATESTACK; i++) {
  if (!bs->activategoalheap[i].inuse) {
   if (bs->activategoalheap[i].justused_time < besttime) {
    besttime = bs->activategoalheap[i].justused_time;
    best = i;
   }
  }
 }
 if (best != -1) {
  memcpy(&bs->activategoalheap[best], activategoal, sizeof(bot_activategoal_t));
  bs->activategoalheap[best].inuse = qtrue;
  bs->activategoalheap[best].next = bs->activatestack;
  bs->activatestack = &bs->activategoalheap[best];
  return qtrue;
 }
 return qfalse;
}
