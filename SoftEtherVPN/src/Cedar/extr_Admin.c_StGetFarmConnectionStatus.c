
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_13__ {TYPE_2__* Server; } ;
struct TYPE_12__ {int Online; int lock; int NumFailed; int NumTry; int NumConnected; int FirstConnectedTime; int StartedTime; int CurrentConnectedTime; int LastError; TYPE_1__* Sock; } ;
struct TYPE_11__ {int Online; int NumFailed; int NumTry; int NumConnected; int FirstConnectedTime; int StartedTime; int CurrentConnectedTime; int LastError; int Port; int Ip; } ;
struct TYPE_10__ {scalar_t__ ServerType; TYPE_4__* FarmController; int * Cedar; } ;
struct TYPE_9__ {int RemotePort; int RemoteIP; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_FARM_CONNECTION_STATUS ;
typedef TYPE_4__ FARM_CONTROLLER ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int ERR_NOT_FARM_MEMBER ;
 int ERR_NO_ERROR ;
 int IPToUINT (int *) ;
 int Lock (int ) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int Unlock (int ) ;
 int Zero (TYPE_3__*,int) ;

UINT StGetFarmConnectionStatus(ADMIN *a, RPC_FARM_CONNECTION_STATUS *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 FARM_CONTROLLER *fc;

 if (s->ServerType != SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_MEMBER;
 }

 Zero(t, sizeof(RPC_FARM_CONNECTION_STATUS));

 fc = s->FarmController;

 Lock(fc->lock);
 {
  if (fc->Sock != ((void*)0))
  {
   t->Ip = IPToUINT(&fc->Sock->RemoteIP);
   t->Port = fc->Sock->RemotePort;
  }

  t->Online = fc->Online;
  t->LastError = ERR_NO_ERROR;

  if (t->Online == 0)
  {
   t->LastError = fc->LastError;
  }
  else
  {
   t->CurrentConnectedTime = fc->CurrentConnectedTime;
  }

  t->StartedTime = fc->StartedTime;
  t->FirstConnectedTime = fc->FirstConnectedTime;

  t->NumConnected = fc->NumConnected;
  t->NumTry = fc->NumTry;
  t->NumFailed = fc->NumFailed;
 }
 Unlock(fc->lock);

 return ERR_NO_ERROR;
}
