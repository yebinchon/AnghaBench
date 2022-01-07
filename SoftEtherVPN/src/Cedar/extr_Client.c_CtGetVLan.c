
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Guid; int DeviceName; int FileName; int Version; int MacAddress; int Enabled; } ;
typedef TYPE_1__ RPC_CLIENT_GET_VLAN ;
typedef int CLIENT ;


 int CiSetError (int *,int ) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_OBJECT_NOT_FOUND ;
 int Free (char*) ;
 char* MsGetDriverFileName (int ,int ) ;
 char* MsGetDriverVersion (int ,int ) ;
 char* MsGetMacAddress (int ,int ) ;
 char* MsGetNetworkAdapterGuid (int ,int ) ;
 int MsIsVLanEnabled (int ) ;
 int MsIsVLanExists (int ,int ) ;
 int StrCpy (int ,int,char*) ;
 int VLAN_ADAPTER_NAME_TAG ;
 int VLAN_ADAPTER_NAME_TAG_OLD ;

bool CtGetVLan(CLIENT *c, RPC_CLIENT_GET_VLAN *get)
{
 char *tmp;

 if (c == ((void*)0) || get == ((void*)0))
 {
  return 0;
 }




 CiSetError(c, ERR_NOT_SUPPORTED);
 return 0;
}
