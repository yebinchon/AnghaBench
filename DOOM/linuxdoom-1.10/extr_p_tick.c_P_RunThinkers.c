
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ acv; int (* acp1 ) (TYPE_3__*) ;} ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__ function; TYPE_2__* prev; } ;
typedef TYPE_3__ thinker_t ;
typedef scalar_t__ actionf_v ;
struct TYPE_8__ {TYPE_3__* next; } ;


 int Z_Free (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;
 TYPE_3__ thinkercap ;

void P_RunThinkers (void)
{
    thinker_t* currentthinker;

    currentthinker = thinkercap.next;
    while (currentthinker != &thinkercap)
    {
 if ( currentthinker->function.acv == (actionf_v)(-1) )
 {

     currentthinker->next->prev = currentthinker->prev;
     currentthinker->prev->next = currentthinker->next;
     Z_Free (currentthinker);
 }
 else
 {
     if (currentthinker->function.acp1)
  currentthinker->function.acp1 (currentthinker);
 }
 currentthinker = currentthinker->next;
    }
}
