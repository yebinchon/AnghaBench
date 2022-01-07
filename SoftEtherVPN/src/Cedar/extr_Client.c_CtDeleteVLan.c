
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef int tmp ;
typedef int t ;
struct TYPE_23__ {int Name; } ;
typedef TYPE_2__ UNIX_VLAN ;
typedef scalar_t__ UINT ;
struct TYPE_26__ {TYPE_1__* ClientOption; } ;
struct TYPE_25__ {int AccountList; int UnixVLanList; } ;
struct TYPE_24__ {int DeviceName; } ;
struct TYPE_22__ {int DeviceName; } ;
struct TYPE_21__ {scalar_t__ OsType; } ;
typedef TYPE_3__ RPC_CLIENT_CREATE_VLAN ;
typedef TYPE_4__ CLIENT ;
typedef TYPE_5__ ACCOUNT ;


 int CLog (TYPE_4__*,char*,int ) ;
 int CiNormalizeAccountVLan (TYPE_4__*) ;
 int CiNotify (TYPE_4__*) ;
 int CiSaveConfigurationFile (TYPE_4__*) ;
 int CiSendGlobalPulse (TYPE_4__*) ;
 int CiSetError (TYPE_4__*,int ) ;
 scalar_t__ Delete (int ,TYPE_2__*) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_OBJECT_NOT_FOUND ;
 int ERR_VLAN_INSTALL_ERROR ;
 int ERR_VLAN_IS_USED ;
 int Format (char*,int,char*,int ) ;
 int Free (TYPE_2__*) ;
 TYPE_10__* GetOsInfo () ;
 scalar_t__ Is32 () ;
 TYPE_5__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int MsExecDriverInstaller (char*) ;
 scalar_t__ MsIs64BitWindows () ;
 scalar_t__ MsIsAdmin () ;
 int MsIsNt () ;
 int MsIsVLanExists (int ,int ) ;
 int MsUninstallVLan (int ) ;
 scalar_t__ OSTYPE_MACOS_X ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 scalar_t__ StrCmpi (int ,int ) ;
 int StrCpy (int ,int,int ) ;
 int UnixVLanDelete (int ) ;
 int UnlockList (int ) ;
 int VLAN_ADAPTER_NAME_TAG ;
 int VLAN_ADAPTER_NAME_TAG_OLD ;
 int Zero (TYPE_2__*,int) ;

bool CtDeleteVLan(CLIENT *c, RPC_CLIENT_CREATE_VLAN *d)
{
 UINT i;
 bool used;

 if (c == ((void*)0) || d == ((void*)0))
 {
  return 0;
 }
 used = 0;
 LockList(c->AccountList);
 {
  for (i = 0;i < LIST_NUM(c->AccountList);i++)
  {
   ACCOUNT *a = LIST_DATA(c->AccountList, i);
   if (StrCmpi(a->ClientOption->DeviceName, d->DeviceName) == 0)
   {
    used = 1;
   }
  }
 }
 UnlockList(c->AccountList);
 LockList(c->UnixVLanList);
 {
  UNIX_VLAN *v, t;

  Zero(&t, sizeof(t));
  StrCpy(t.Name, sizeof(t.Name), d->DeviceName);

  v = Search(c->UnixVLanList, &t);
  if (v == ((void*)0))
  {
   UnlockList(c->UnixVLanList);
   CiSetError(c, ERR_OBJECT_NOT_FOUND);
   return 0;
  }


  if (Delete(c->UnixVLanList, v))
  {
   Free(v);
  }

  CLog(c, "LC_DELETE_VLAN", d->DeviceName);

  UnixVLanDelete(d->DeviceName);
 }
 UnlockList(c->UnixVLanList);

 CiNormalizeAccountVLan(c);

 CiSaveConfigurationFile(c);
 CiNotify(c);
 CiSendGlobalPulse(c);

 return 1;
}
