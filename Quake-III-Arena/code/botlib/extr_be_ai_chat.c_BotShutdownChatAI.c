
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* chat; } ;


 int BotFreeChatState (int) ;
 int BotFreeMatchTemplates (int *) ;
 int BotFreeReplyChat (int *) ;
 int FreeMemory (TYPE_1__*) ;
 int MAX_CLIENTS ;
 scalar_t__* botchatstates ;
 TYPE_1__* consolemessageheap ;
 TYPE_1__** ichatdata ;
 int * matchtemplates ;
 TYPE_1__* randomstrings ;
 int * replychats ;
 TYPE_1__* synonyms ;

void BotShutdownChatAI(void)
{
 int i;


 for(i = 0; i < MAX_CLIENTS; i++)
 {
  if (botchatstates[i])
  {
   BotFreeChatState(i);
  }
 }

 for(i = 0; i < MAX_CLIENTS; i++)
 {
  if (ichatdata[i])
  {
   FreeMemory(ichatdata[i]->chat);
   FreeMemory(ichatdata[i]);
   ichatdata[i] = ((void*)0);
  }
 }
 if (consolemessageheap) FreeMemory(consolemessageheap);
 consolemessageheap = ((void*)0);
 if (matchtemplates) BotFreeMatchTemplates(matchtemplates);
 matchtemplates = ((void*)0);
 if (randomstrings) FreeMemory(randomstrings);
 randomstrings = ((void*)0);
 if (synonyms) FreeMemory(synonyms);
 synonyms = ((void*)0);
 if (replychats) BotFreeReplyChat(replychats);
 replychats = ((void*)0);
}
