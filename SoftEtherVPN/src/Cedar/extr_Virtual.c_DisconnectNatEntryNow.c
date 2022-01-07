
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int SockEvent; } ;
typedef TYPE_1__ VH ;
struct TYPE_6__ {int DisconnectNow; } ;
typedef TYPE_2__ NAT_ENTRY ;


 int SetSockEvent (int ) ;

void DisconnectNatEntryNow(VH *v, NAT_ENTRY *e)
{

 if (v == ((void*)0) || e == ((void*)0))
 {
  return;
 }

 if (e->DisconnectNow == 0)
 {
  e->DisconnectNow = 1;

  SetSockEvent(v->SockEvent);
 }
}
