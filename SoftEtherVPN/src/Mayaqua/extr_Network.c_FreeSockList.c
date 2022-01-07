
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int SockList; } ;
typedef TYPE_1__ SOCKLIST ;


 int Free (TYPE_1__*) ;
 int ReleaseList (int ) ;
 int StopSockList (TYPE_1__*) ;

void FreeSockList(SOCKLIST *sl)
{

 if (sl == ((void*)0))
 {
  return;
 }

 StopSockList(sl);

 ReleaseList(sl->SockList);

 Free(sl);
}
