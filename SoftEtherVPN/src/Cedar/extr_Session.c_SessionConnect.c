
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_17__ {scalar_t__ ClientConnectError_NoSavePassword; int Err; } ;
struct TYPE_16__ {int CancelConnect; int Client_NoSavePassword; int lock; TYPE_10__* Policy; TYPE_5__* Connection; TYPE_3__* Cedar; TYPE_2__* Account; int Err; int ClientStatus; } ;
struct TYPE_15__ {int * Client; } ;
struct TYPE_14__ {int lock; TYPE_1__* ClientAuth; } ;
struct TYPE_13__ {scalar_t__ AuthType; int PlainPassword; int HashedPassword; } ;
struct TYPE_12__ {scalar_t__ NoSavePassword; } ;
typedef TYPE_4__ SESSION ;
typedef TYPE_5__ CONNECTION ;


 scalar_t__ AUTHTYPE_PASSWORD ;
 scalar_t__ AUTHTYPE_RADIUS ;
 int CLIENT_STATUS_CONNECTING ;
 int CiSaveConfigurationFile (int *) ;
 int ClientConnect (TYPE_5__*) ;
 int Debug (char*) ;
 int ERR_NO_ERROR ;
 int Free (TYPE_10__*) ;
 int Lock (int ) ;
 TYPE_5__* NewClientConnection (TYPE_4__*) ;
 int ReleaseConnection (TYPE_5__*) ;
 int Unlock (int ) ;
 int Zero (int ,int) ;

bool SessionConnect(SESSION *s)
{
 CONNECTION *c;
 bool ret = 0;

 if (s == ((void*)0))
 {
  return 0;
 }

 s->ClientStatus = CLIENT_STATUS_CONNECTING;

 Debug("SessionConnect() Started.\n");


 Lock(s->lock);
 {
  s->Err = ERR_NO_ERROR;
  if (s->Policy != ((void*)0))
  {
   Free(s->Policy);
   s->Policy = ((void*)0);
  }
 }
 Unlock(s->lock);

 s->CancelConnect = 0;


 c = NewClientConnection(s);
 s->Connection = c;


 ret = ClientConnect(c);
 s->Err = c->Err;

 s->CancelConnect = 0;

 if (s->Cedar->Client != ((void*)0))
 {
  if (s->Policy != ((void*)0))
  {
   if (s->Policy->NoSavePassword)
   {
    s->Client_NoSavePassword = 1;

    if (s->Account != ((void*)0))
    {
     Lock(s->Account->lock);
     {
      if (s->Account->ClientAuth != ((void*)0))
      {
       if (s->Account->ClientAuth->AuthType == AUTHTYPE_PASSWORD ||
        s->Account->ClientAuth->AuthType == AUTHTYPE_RADIUS)
       {
        Zero(s->Account->ClientAuth->HashedPassword, sizeof(s->Account->ClientAuth->HashedPassword));
        Zero(s->Account->ClientAuth->PlainPassword, sizeof(s->Account->ClientAuth->PlainPassword));
       }
      }
     }
     Unlock(s->Account->lock);

     CiSaveConfigurationFile(s->Cedar->Client);
    }
   }
  }
 }

 if (c->ClientConnectError_NoSavePassword)
 {
  s->Client_NoSavePassword = 1;
 }


 s->Connection = ((void*)0);
 ReleaseConnection(c);

 Lock(s->lock);
 {
  if (s->Policy != ((void*)0))
  {
   Free(s->Policy);
   s->Policy = ((void*)0);
  }
 }
 Unlock(s->lock);

 return ret;
}
