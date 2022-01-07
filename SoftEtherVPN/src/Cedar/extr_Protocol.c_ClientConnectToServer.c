
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int X ;
struct TYPE_12__ {void* Err; TYPE_1__* FirstSock; int ServerName; scalar_t__ Halt; } ;
struct TYPE_11__ {int * RemoteX; } ;
typedef TYPE_1__ SOCK ;
typedef int K ;
typedef TYPE_2__ CONNECTION ;


 int CONNECTING_TIMEOUT ;
 TYPE_1__* ClientConnectGetSocket (TYPE_2__*,int) ;
 int Disconnect (TYPE_1__*) ;
 void* ERR_SERVER_IS_NOT_VPN ;
 void* ERR_USER_CANCEL ;
 int ReleaseSock (TYPE_1__*) ;
 int SetTimeout (TYPE_1__*,int ) ;
 int StartSSLEx (TYPE_1__*,int *,int *,int ,int ) ;

SOCK *ClientConnectToServer(CONNECTION *c)
{
 SOCK *s = ((void*)0);
 X *x = ((void*)0);
 K *k = ((void*)0);

 if (c == ((void*)0))
 {
  return ((void*)0);
 }

 if (c->Halt)
 {
  c->Err = ERR_USER_CANCEL;
  return ((void*)0);
 }


 s = ClientConnectGetSocket(c, 0);
 if (s == ((void*)0))
 {

  return ((void*)0);
 }

 c->FirstSock = s;

 if (c->Halt)
 {
  c->Err = ERR_USER_CANCEL;
  ReleaseSock(s);
  c->FirstSock = ((void*)0);
  return ((void*)0);
 }


 SetTimeout(s, CONNECTING_TIMEOUT);


 if (StartSSLEx(s, x, k, 0, c->ServerName) == 0)
 {

  Disconnect(s);
  ReleaseSock(s);
  c->FirstSock = ((void*)0);
  c->Err = ERR_SERVER_IS_NOT_VPN;
  return ((void*)0);
 }

 if (s->RemoteX == ((void*)0))
 {

  Disconnect(s);
  ReleaseSock(s);
  c->FirstSock = ((void*)0);
  c->Err = ERR_SERVER_IS_NOT_VPN;
  return ((void*)0);
 }

 return s;
}
