
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {TYPE_1__* Server; } ;
struct TYPE_11__ {int Server; int ServerPort; int Interval; int lock; int UdpMode; int ServerName; scalar_t__ Enable; } ;
struct TYPE_10__ {int KeepConnectPort; int KeepConnectInterval; int KeepConnectProtocol; int KeepConnectHost; scalar_t__ UseKeepConnect; } ;
struct TYPE_9__ {TYPE_3__* Keep; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_KEEP ;
typedef TYPE_3__ KEEP ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,int *,char*) ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int Lock (int ) ;
 int SERVER_ADMIN_ONLY ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;

UINT StSetKeep(ADMIN *a, RPC_KEEP *t)
{
 SERVER *s = a->Server;

 if (t->UseKeepConnect)
 {
  if (IsEmptyStr(t->KeepConnectHost) ||
   t->KeepConnectPort == 0 ||
   t->KeepConnectPort >= 65536)
  {
   return ERR_INVALID_PARAMETER;
  }
 }

 SERVER_ADMIN_ONLY;

 Lock(s->Keep->lock);
 {
  KEEP *keep = s->Keep;
  keep->Enable = t->UseKeepConnect;
  keep->Server = 1;
  StrCpy(keep->ServerName, sizeof(keep->ServerName), t->KeepConnectHost);
  keep->ServerPort = t->KeepConnectPort;
  keep->UdpMode = t->KeepConnectProtocol;
  keep->Interval = t->KeepConnectInterval * 1000;
  if (keep->Interval < 5000)
  {
   keep->Interval = 5000;
  }
  else if (keep->Interval > 600000)
  {
   keep->Interval = 600000;
  }
 }
 Unlock(s->Keep->lock);

 ALog(a, ((void*)0), "LA_SET_KEEP");

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
