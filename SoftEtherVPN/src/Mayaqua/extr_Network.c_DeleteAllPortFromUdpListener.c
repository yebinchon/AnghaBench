
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Event; int PortList; } ;
typedef TYPE_1__ UDPLISTENER ;


 int DelInt (int ,int) ;
 int Free (int*) ;
 scalar_t__ LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int LockList (int ) ;
 int SetSockEvent (int ) ;
 int UnlockList (int ) ;
 int* ZeroMalloc (int) ;

void DeleteAllPortFromUdpListener(UDPLISTENER *u)
{

 if (u == ((void*)0))
 {
  return;
 }

 LockList(u->PortList);
 {
  UINT num_ports = LIST_NUM(u->PortList);
  UINT *ports = ZeroMalloc(sizeof(UINT) * num_ports);
  UINT i;

  for (i = 0;i < num_ports;i++)
  {
   ports[i] = *((UINT *)(LIST_DATA(u->PortList, i)));
  }

  for (i = 0;i < num_ports;i++)
  {
   UINT port = ports[i];

   DelInt(u->PortList, port);
  }

  Free(ports);
 }
 UnlockList(u->PortList);

 SetSockEvent(u->Event);
}
