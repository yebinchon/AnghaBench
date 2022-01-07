
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Event; int PortList; } ;
typedef TYPE_1__ UDPLISTENER ;


 int DelInt (int ,scalar_t__) ;
 int LockList (int ) ;
 int SetSockEvent (int ) ;
 int UnlockList (int ) ;

void DeletePortFromUdpListener(UDPLISTENER *u, UINT port)
{

 if (u == ((void*)0) || port == 0)
 {
  return;
 }

 LockList(u->PortList);
 {
  DelInt(u->PortList, port);
 }
 UnlockList(u->PortList);

 SetSockEvent(u->Event);
}
