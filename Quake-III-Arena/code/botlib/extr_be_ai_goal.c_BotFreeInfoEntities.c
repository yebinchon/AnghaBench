
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ maplocation_t ;
typedef TYPE_1__ campspot_t ;


 int FreeMemory (TYPE_1__*) ;
 TYPE_1__* campspots ;
 TYPE_1__* maplocations ;

void BotFreeInfoEntities(void)
{
 maplocation_t *ml, *nextml;
 campspot_t *cs, *nextcs;

 for (ml = maplocations; ml; ml = nextml)
 {
  nextml = ml->next;
  FreeMemory(ml);
 }
 maplocations = ((void*)0);
 for (cs = campspots; cs; cs = nextcs)
 {
  nextcs = cs->next;
  FreeMemory(cs);
 }
 campspots = ((void*)0);
}
