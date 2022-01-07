
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Protocol; } ;
typedef TYPE_1__ CONNECTION ;


 scalar_t__ CONNECTION_TCP ;
 int DisconnectTcpSockets (TYPE_1__*) ;
 int DisconnectUDPSockets (TYPE_1__*) ;

void EndTunnelingMode(CONNECTION *c)
{

 if (c == ((void*)0))
 {
  return;
 }


 if (c->Protocol == CONNECTION_TCP)
 {

  DisconnectTcpSockets(c);
 }
 else
 {

  DisconnectUDPSockets(c);
 }
}
