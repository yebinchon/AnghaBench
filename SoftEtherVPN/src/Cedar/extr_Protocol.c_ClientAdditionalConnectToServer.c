
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {TYPE_1__* Session; int ServerX; int ConnectingSocks; int ServerName; } ;
struct TYPE_15__ {int RemoteX; int ref; } ;
struct TYPE_14__ {int SessionTimeOuted; scalar_t__ Halt; } ;
typedef TYPE_2__ SOCK ;
typedef TYPE_3__ CONNECTION ;


 int Add (int ,TYPE_2__*) ;
 int AddRef (int ) ;
 int CONNECTING_TIMEOUT ;
 TYPE_2__* ClientConnectGetSocket (TYPE_3__*,int) ;
 int CompareX (int ,int ) ;
 scalar_t__ Delete (int ,TYPE_2__*) ;
 int Disconnect (TYPE_2__*) ;
 int LockList (int ) ;
 int ReleaseSock (TYPE_2__*) ;
 int SetTimeout (TYPE_2__*,int ) ;
 int StartSSLEx (TYPE_2__*,int *,int *,int ,int ) ;
 int UnlockList (int ) ;

SOCK *ClientAdditionalConnectToServer(CONNECTION *c)
{
 SOCK *s;

 if (c == ((void*)0))
 {
  return ((void*)0);
 }


 s = ClientConnectGetSocket(c, 1);
 if (s == ((void*)0))
 {

  return ((void*)0);
 }


 LockList(c->ConnectingSocks);
 {
  Add(c->ConnectingSocks, s);
  AddRef(s->ref);
 }
 UnlockList(c->ConnectingSocks);

 if (c->Session->Halt)
 {

  Disconnect(s);
  LockList(c->ConnectingSocks);
  {
   if (Delete(c->ConnectingSocks, s))
   {
    ReleaseSock(s);
   }
  }
  UnlockList(c->ConnectingSocks);
  ReleaseSock(s);
  return ((void*)0);
 }


 SetTimeout(s, CONNECTING_TIMEOUT);


 if (StartSSLEx(s, ((void*)0), ((void*)0), 0, c->ServerName) == 0)
 {

  Disconnect(s);
  LockList(c->ConnectingSocks);
  {
   if (Delete(c->ConnectingSocks, s))
   {
    ReleaseSock(s);
   }
  }
  UnlockList(c->ConnectingSocks);
  ReleaseSock(s);
  return ((void*)0);
 }


 if (CompareX(s->RemoteX, c->ServerX) == 0)
 {

  Disconnect(s);
  c->Session->SessionTimeOuted = 1;
 }

 return s;
}
