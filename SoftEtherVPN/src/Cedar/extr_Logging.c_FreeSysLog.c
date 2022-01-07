
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Udp; int lock; } ;
typedef TYPE_1__ SLOG ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int ReleaseSock (int ) ;

void FreeSysLog(SLOG *g)
{

 if (g == ((void*)0))
 {
  return;
 }

 DeleteLock(g->lock);
 ReleaseSock(g->Udp);
 Free(g);
}
