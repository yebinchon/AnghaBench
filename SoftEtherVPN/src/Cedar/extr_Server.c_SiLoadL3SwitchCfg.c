
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tbl ;
typedef int name ;
typedef size_t UINT ;
struct TYPE_8__ {int Metric; void* GatewayAddress; void* SubnetMask; void* NetworkAddress; } ;
struct TYPE_7__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ L3TABLE ;
typedef int L3SW ;
typedef int FOLDER ;


 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int CfgGetBool (int *,char*) ;
 int * CfgGetFolder (int *,char*) ;
 int CfgGetInt (int *,char*) ;
 void* CfgGetIp32 (int *,char*) ;
 int CfgGetStr (int *,char*,char*,int) ;
 int FreeToken (TYPE_1__*) ;
 int L3AddIf (int *,char*,size_t,size_t) ;
 int L3AddTable (int *,TYPE_2__*) ;
 int L3SwStart (int *) ;
 int MAX_HUBNAME_LEN ;
 int Zero (TYPE_2__*,int) ;

void SiLoadL3SwitchCfg(L3SW *sw, FOLDER *f)
{
 UINT i;
 FOLDER *if_folder, *table_folder;
 TOKEN_LIST *t;
 bool active = 0;

 if (sw == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 active = CfgGetBool(f, "Active");


 if_folder = CfgGetFolder(f, "InterfaceList");
 if (if_folder != ((void*)0))
 {
  t = CfgEnumFolderToTokenList(if_folder);
  if (t != ((void*)0))
  {
   for (i = 0;i < t->NumTokens;i++)
   {
    FOLDER *ff = CfgGetFolder(if_folder, t->Token[i]);
    char name[MAX_HUBNAME_LEN + 1];
    UINT ip, subnet;

    CfgGetStr(ff, "HubName", name, sizeof(name));
    ip = CfgGetIp32(ff, "IpAddress");
    subnet = CfgGetIp32(ff, "SubnetMask");

    {
     L3AddIf(sw, name, ip, subnet);
    }
   }
   FreeToken(t);
  }
 }


 table_folder = CfgGetFolder(f, "RoutingTable");
 if (table_folder != ((void*)0))
 {
  t = CfgEnumFolderToTokenList(table_folder);
  if (t != ((void*)0))
  {
   for (i = 0;i < t->NumTokens;i++)
   {
    FOLDER *ff = CfgGetFolder(table_folder, t->Token[i]);
    L3TABLE tbl;

    Zero(&tbl, sizeof(tbl));
    tbl.NetworkAddress = CfgGetIp32(ff, "NetworkAddress");
    tbl.SubnetMask = CfgGetIp32(ff, "SubnetMask");
    tbl.GatewayAddress = CfgGetIp32(ff, "GatewayAddress");
    tbl.Metric = CfgGetInt(ff, "Metric");

    L3AddTable(sw, &tbl);
   }
   FreeToken(t);
  }
 }

 if (active)
 {
  L3SwStart(sw);
 }
}
