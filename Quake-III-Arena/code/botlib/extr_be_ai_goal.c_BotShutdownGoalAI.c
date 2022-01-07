
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BotFreeGoalState (int) ;
 int BotFreeInfoEntities () ;
 int FreeMemory (int *) ;
 int MAX_CLIENTS ;
 scalar_t__* botgoalstates ;
 int * freelevelitems ;
 int * itemconfig ;
 int * levelitemheap ;
 int * levelitems ;
 scalar_t__ numlevelitems ;

void BotShutdownGoalAI(void)
{
 int i;

 if (itemconfig) FreeMemory(itemconfig);
 itemconfig = ((void*)0);
 if (levelitemheap) FreeMemory(levelitemheap);
 levelitemheap = ((void*)0);
 freelevelitems = ((void*)0);
 levelitems = ((void*)0);
 numlevelitems = 0;

 BotFreeInfoEntities();

 for (i = 1; i <= MAX_CLIENTS; i++)
 {
  if (botgoalstates[i])
  {
   BotFreeGoalState(i);
  }
 }
}
