
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int t ;
struct TYPE_13__ {int MacAddress; int Name; } ;
typedef TYPE_1__ UNIX_VLAN ;
struct TYPE_15__ {int UnixVLanList; } ;
struct TYPE_14__ {int MacAddress; int DeviceName; } ;
typedef TYPE_2__ RPC_CLIENT_SET_VLAN ;
typedef TYPE_3__ CLIENT ;


 int CiNotify (TYPE_3__*) ;
 int CiSaveConfigurationFile (TYPE_3__*) ;
 int CiSendGlobalPulse (TYPE_3__*) ;
 int CiSetError (TYPE_3__*,int ) ;
 int ERR_OBJECT_NOT_FOUND ;
 int ERR_VLAN_ALREADY_EXISTS ;
 int LockList (int ) ;
 int MsIsVLanExists (int ,int ) ;
 int MsSetMacAddress (int ,int ,int ) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int ) ;
 int StrToMac (int ,int ) ;
 int UnlockList (int ) ;
 int VLAN_ADAPTER_NAME_TAG ;
 int VLAN_ADAPTER_NAME_TAG_OLD ;
 int Zero (TYPE_1__*,int) ;

bool CtSetVLan(CLIENT *c, RPC_CLIENT_SET_VLAN *set)
{

 if (c == ((void*)0) || set == ((void*)0))
 {
  return 0;
 }



 LockList(c->UnixVLanList);
 {
  UNIX_VLAN t, *r;
  Zero(&t, sizeof(t));
  StrCpy(t.Name, sizeof(t.Name), set->DeviceName);

  r = Search(c->UnixVLanList, &t);
  if (r == ((void*)0))
  {

   CiSetError(c, ERR_VLAN_ALREADY_EXISTS);
   UnlockList(c->UnixVLanList);
   return 0;
  }

  StrToMac(r->MacAddress, set->MacAddress);
 }
 UnlockList(c->UnixVLanList);

 CiSaveConfigurationFile(c);
 CiNotify(c);
 CiSendGlobalPulse(c);

 return 1;
}
