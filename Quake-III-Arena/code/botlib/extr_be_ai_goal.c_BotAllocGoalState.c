
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bot_goalstate_t ;
struct TYPE_3__ {int client; } ;


 TYPE_1__* GetClearedMemory (int) ;
 int MAX_CLIENTS ;
 TYPE_1__** botgoalstates ;

int BotAllocGoalState(int client)
{
 int i;

 for (i = 1; i <= MAX_CLIENTS; i++)
 {
  if (!botgoalstates[i])
  {
   botgoalstates[i] = GetClearedMemory(sizeof(bot_goalstate_t));
   botgoalstates[i]->client = client;
   return i;
  }
 }
 return 0;
}
