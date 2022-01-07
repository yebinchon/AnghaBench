
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; struct TYPE_4__* next; } ;
typedef TYPE_1__ CALLSTACK_DATA ;


 int OSMemoryFree (TYPE_1__*) ;

void FreeCallStack(CALLSTACK_DATA *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 while (1)
 {
  CALLSTACK_DATA *next = s->next;
  OSMemoryFree(s->name);
  OSMemoryFree(s);
  if (next == ((void*)0))
  {
   break;
  }
  s = next;
 }
}
