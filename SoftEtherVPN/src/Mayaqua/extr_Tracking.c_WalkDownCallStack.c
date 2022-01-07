
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {struct TYPE_5__* name; struct TYPE_5__* next; } ;
typedef TYPE_1__ CALLSTACK_DATA ;


 int OSMemoryFree (TYPE_1__*) ;

CALLSTACK_DATA *WalkDownCallStack(CALLSTACK_DATA *s, UINT num)
{
 CALLSTACK_DATA *cs, *tmp;
 UINT i;

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 cs = s;
 i = 0;

 while (1)
 {
  if (i >= num)
  {
   return cs;
  }
  i++;
  tmp = cs;
  cs = tmp->next;
  OSMemoryFree(tmp->name);
  OSMemoryFree(tmp);

  if (cs == ((void*)0))
  {
   return ((void*)0);
  }
 }
}
