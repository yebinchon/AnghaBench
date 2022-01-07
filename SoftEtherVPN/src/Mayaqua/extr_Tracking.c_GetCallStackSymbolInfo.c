
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CALLSTACK_DATA ;


 int OSGetCallStackSymbolInfo (int *) ;
 int OSLock (int ) ;
 int OSUnlock (int ) ;
 int cs_lock ;

bool GetCallStackSymbolInfo(CALLSTACK_DATA *s)
{
 bool ret;

 if (s == ((void*)0))
 {
  return 0;
 }

 OSLock(cs_lock);
 {
  ret = OSGetCallStackSymbolInfo(s);
 }
 OSUnlock(cs_lock);

 return ret;
}
