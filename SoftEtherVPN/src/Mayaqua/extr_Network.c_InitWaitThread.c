
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NewList (int *) ;
 int WaitThreadList ;

void InitWaitThread()
{
 WaitThreadList = NewList(((void*)0));
}
