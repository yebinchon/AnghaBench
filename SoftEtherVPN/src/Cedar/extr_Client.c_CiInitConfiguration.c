
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int OsType; } ;
struct TYPE_8__ {int AllowRemoteConfig; int UseKeepConnect; int KeepConnectInterval; int KeepConnectProtocol; int KeepConnectPort; int KeepConnectHost; } ;
struct TYPE_9__ {int Logger; int Eraser; TYPE_1__ Config; int EncryptedPassword; void* UnixVLanList; void* AccountList; } ;
typedef TYPE_2__ CLIENT ;


 int CLIENT_DEFAULT_KEEPALIVE_HOST ;
 int CLIENT_DEFAULT_KEEPALIVE_INTERVAL ;
 int CLIENT_DEFAULT_KEEPALIVE_PORT ;
 int CLog (TYPE_2__*,char*) ;
 int CONNECTION_UDP ;
 int CiCompareAccount ;
 int CiCompareUnixVLan ;
 int CiLoadConfigurationFile (TYPE_2__*) ;
 int CiSetVLanToDefault (TYPE_2__*) ;
 TYPE_3__* GetOsInfo () ;
 int NewEraser (int ,int ) ;
 void* NewList (int ) ;
 scalar_t__ OS_IS_UNIX (int ) ;
 int Sha0 (int ,char*,int ) ;
 int StrCpy (int ,int,int ) ;
 int UnixVLanInit () ;

void CiInitConfiguration(CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }







 c->AccountList = NewList(CiCompareAccount);


 if (OS_IS_UNIX(GetOsInfo()->OsType))
 {
  c->UnixVLanList = NewList(CiCompareUnixVLan);
 }


 CLog(c, "LC_LOAD_CONFIG_1");
 if (CiLoadConfigurationFile(c) == 0)
 {
  CLog(c, "LC_LOAD_CONFIG_3");


  Sha0(c->EncryptedPassword, "", 0);


  c->Config.AllowRemoteConfig = 0;
  StrCpy(c->Config.KeepConnectHost, sizeof(c->Config.KeepConnectHost), CLIENT_DEFAULT_KEEPALIVE_HOST);
  c->Config.KeepConnectPort = CLIENT_DEFAULT_KEEPALIVE_PORT;
  c->Config.KeepConnectProtocol = CONNECTION_UDP;
  c->Config.KeepConnectInterval = CLIENT_DEFAULT_KEEPALIVE_INTERVAL;
  c->Config.UseKeepConnect = 0;

  c->Eraser = NewEraser(c->Logger, 0);
 }
 else
 {
  CLog(c, "LC_LOAD_CONFIG_2");
 }


 CiSetVLanToDefault(c);
}
