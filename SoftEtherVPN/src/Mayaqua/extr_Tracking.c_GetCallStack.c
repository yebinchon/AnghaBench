
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CALLSTACK_DATA ;


 int * OSGetCallStack () ;
 int OSLock (int ) ;
 int OSUnlock (int ) ;
 int * WalkDownCallStack (int *,int) ;
 int cs_lock ;
 scalar_t__ do_not_get_callstack ;

CALLSTACK_DATA *GetCallStack()
{
 CALLSTACK_DATA *s;
 if (do_not_get_callstack)
 {

  return ((void*)0);
 }

 OSLock(cs_lock);
 {

  s = OSGetCallStack();
 }
 OSUnlock(cs_lock);
 if (s == ((void*)0))
 {
  return ((void*)0);
 }


 s = WalkDownCallStack(s, 3);

 return s;
}
