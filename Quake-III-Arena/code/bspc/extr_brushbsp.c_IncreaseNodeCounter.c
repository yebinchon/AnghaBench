
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ThreadLock () ;
 int ThreadUnlock () ;
 int numrecurse ;
 int qprintf (char*,int ) ;

void IncreaseNodeCounter(void)
{
 ThreadLock();

 qprintf("\r%6d", numrecurse++);

 ThreadUnlock();
}
