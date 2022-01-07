
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeMemory (int *) ;
 int MAX_CLIENTS ;
 int ** botmovestates ;

void BotShutdownMoveAI(void)
{
 int i;

 for (i = 1; i <= MAX_CLIENTS; i++)
 {
  if (botmovestates[i])
  {
   FreeMemory(botmovestates[i]);
   botmovestates[i] = ((void*)0);
  }
 }
}
