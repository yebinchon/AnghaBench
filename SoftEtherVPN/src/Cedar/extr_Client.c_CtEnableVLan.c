
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int tmp ;
typedef int t ;
struct TYPE_14__ {int Enabled; int Name; } ;
typedef TYPE_1__ UNIX_VLAN ;
struct TYPE_17__ {scalar_t__ OsType; } ;
struct TYPE_16__ {int UnixVLanList; } ;
struct TYPE_15__ {int DeviceName; } ;
typedef TYPE_2__ RPC_CLIENT_CREATE_VLAN ;
typedef TYPE_3__ CLIENT ;


 int CiNotify (TYPE_3__*) ;
 int CiSaveConfigurationFile (TYPE_3__*) ;
 int CiSendGlobalPulse (TYPE_3__*) ;
 int CiSetError (TYPE_3__*,int ) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_OBJECT_NOT_FOUND ;
 int ERR_VLAN_INSTALL_ERROR ;
 int Format (char*,int,char*,int ) ;
 TYPE_7__* GetOsInfo () ;
 scalar_t__ Is32 () ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int MsEnableVLan (int ) ;
 int MsExecDriverInstaller (char*) ;
 scalar_t__ MsIs64BitWindows () ;
 scalar_t__ MsIsAdmin () ;
 int MsIsVLanExists (int ,int ) ;
 scalar_t__ OSTYPE_MACOS_X ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int ) ;
 int UnlockList (int ) ;
 int VLAN_ADAPTER_NAME_TAG ;
 int VLAN_ADAPTER_NAME_TAG_OLD ;
 int Zero (TYPE_1__*,int) ;

bool CtEnableVLan(CLIENT *c, RPC_CLIENT_CREATE_VLAN *vlan)
{

 if (c == ((void*)0) || vlan == ((void*)0))
 {
  return 0;
 }
 LockList(c->UnixVLanList);
 {
  UNIX_VLAN *v, t;

  Zero(&t, sizeof(t));
  StrCpy(t.Name, sizeof(t.Name), vlan->DeviceName);

  v = Search(c->UnixVLanList, &t);
  if (v == ((void*)0))
  {
   UnlockList(c->UnixVLanList);
   CiSetError(c, ERR_OBJECT_NOT_FOUND);
   return 0;
  }


  v->Enabled = 1;
 }
 UnlockList(c->UnixVLanList);

 CiSaveConfigurationFile(c);
 CiNotify(c);
 CiSendGlobalPulse(c);

 return 1;
}
