
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_chatstate_t ;


 scalar_t__ GetClearedMemory (int) ;
 int MAX_CLIENTS ;
 scalar_t__* botchatstates ;

int BotAllocChatState(void)
{
 int i;

 for (i = 1; i <= MAX_CLIENTS; i++)
 {
  if (!botchatstates[i])
  {
   botchatstates[i] = GetClearedMemory(sizeof(bot_chatstate_t));
   return i;
  }
 }
 return 0;
}
