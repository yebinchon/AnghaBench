
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ bot_consolemessage_t ;


 int FreeMemory (TYPE_1__*) ;
 scalar_t__ GetClearedHunkMemory (int) ;
 scalar_t__ LibVarValue (char*,char*) ;
 TYPE_1__* consolemessageheap ;
 TYPE_1__* freeconsolemessages ;

void InitConsoleMessageHeap(void)
{
 int i, max_messages;

 if (consolemessageheap) FreeMemory(consolemessageheap);

 max_messages = (int) LibVarValue("max_messages", "1024");
 consolemessageheap = (bot_consolemessage_t *) GetClearedHunkMemory(max_messages *
            sizeof(bot_consolemessage_t));
 consolemessageheap[0].prev = ((void*)0);
 consolemessageheap[0].next = &consolemessageheap[1];
 for (i = 1; i < max_messages-1; i++)
 {
  consolemessageheap[i].prev = &consolemessageheap[i - 1];
  consolemessageheap[i].next = &consolemessageheap[i + 1];
 }
 consolemessageheap[max_messages-1].prev = &consolemessageheap[max_messages-2];
 consolemessageheap[max_messages-1].next = ((void*)0);

 freeconsolemessages = consolemessageheap;
}
