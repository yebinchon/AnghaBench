
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SockList; } ;
typedef TYPE_1__ SOCKLIST ;


 int NewList (int *) ;
 TYPE_1__* ZeroMallocFast (int) ;

SOCKLIST *NewSockList()
{
 SOCKLIST *sl = ZeroMallocFast(sizeof(SOCKLIST));

 sl->SockList = NewList(((void*)0));

 return sl;
}
