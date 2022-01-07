
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ThreadLock () ;
 int ThreadUnlock () ;
 int nodelistsize ;

int NodeListSize(void)
{
 int size;

 ThreadLock();
 size = nodelistsize;
 ThreadUnlock();

 return size;
}
