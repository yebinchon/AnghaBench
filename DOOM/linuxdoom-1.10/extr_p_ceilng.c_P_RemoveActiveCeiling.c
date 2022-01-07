
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int thinker; TYPE_1__* sector; } ;
typedef TYPE_2__ ceiling_t ;
struct TYPE_5__ {int * specialdata; } ;


 int MAXCEILINGS ;
 int P_RemoveThinker (int *) ;
 TYPE_2__** activeceilings ;

void P_RemoveActiveCeiling(ceiling_t* c)
{
    int i;

    for (i = 0;i < MAXCEILINGS;i++)
    {
 if (activeceilings[i] == c)
 {
     activeceilings[i]->sector->specialdata = ((void*)0);
     P_RemoveThinker (&activeceilings[i]->thinker);
     activeceilings[i] = ((void*)0);
     break;
 }
    }
}
