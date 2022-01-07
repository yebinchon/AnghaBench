
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int KeepConnectInterval; scalar_t__ KeepConnectProtocol; int KeepConnectPort; int KeepConnectHost; } ;
struct TYPE_14__ {int AccountList; int UnixVLanList; TYPE_8__ Config; TYPE_1__* Keep; int lock; } ;
struct TYPE_13__ {int KeepConnectPort; scalar_t__ NicDownOnDisconnect; scalar_t__ UseKeepConnect; int KeepConnectHost; } ;
struct TYPE_12__ {int Interval; int UdpMode; int Enable; int lock; int ServerPort; int ServerName; } ;
typedef TYPE_1__ KEEP ;
typedef TYPE_2__ CLIENT_CONFIG ;
typedef TYPE_3__ CLIENT ;


 scalar_t__ CONNECTION_UDP ;
 int CiSaveConfigurationFile (TYPE_3__*) ;
 int CiSetError (TYPE_3__*,int ) ;
 int Copy (TYPE_8__*,TYPE_2__*,int) ;
 int CtVLansDown (TYPE_3__*) ;
 int CtVLansUp (TYPE_3__*) ;
 int ERR_INVALID_PARAMETER ;
 scalar_t__ IsEmptyStr (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

bool CtSetClientConfig(CLIENT *c, CLIENT_CONFIG *o)
{
 KEEP *k;

 if (c == ((void*)0) || o == ((void*)0))
 {
  return 0;
 }

 if (o->UseKeepConnect)
 {
  if (IsEmptyStr(o->KeepConnectHost) ||
   o->KeepConnectPort == 0 ||
   o->KeepConnectPort >= 65536)
  {
   CiSetError(c, ERR_INVALID_PARAMETER);
   return 0;
  }
 }

 Lock(c->lock);
 {
  Copy(&c->Config, o, sizeof(CLIENT_CONFIG));
 }
 Unlock(c->lock);


 CiSaveConfigurationFile(c);


 k = c->Keep;
 Lock(k->lock);
 {
  if (o->UseKeepConnect)
  {
   StrCpy(k->ServerName, sizeof(k->ServerName), c->Config.KeepConnectHost);
   k->ServerPort = c->Config.KeepConnectPort;
   k->Interval = c->Config.KeepConnectInterval * 1000;
   k->UdpMode = (c->Config.KeepConnectProtocol == CONNECTION_UDP) ? 1 : 0;
   k->Enable = 1;
  }
  else
  {
   k->Enable = 0;
  }
 }
 Unlock(k->lock);


 LockList(c->AccountList);
 LockList(c->UnixVLanList);
 if (o->NicDownOnDisconnect)
 {
  CtVLansDown(c);
 }
 else
 {
  CtVLansUp(c);
 }
 UnlockList(c->UnixVLanList);
 UnlockList(c->AccountList);

 return 1;
}
