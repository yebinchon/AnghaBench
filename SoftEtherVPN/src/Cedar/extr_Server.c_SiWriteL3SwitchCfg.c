
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int SubnetMask; int IpAddress; int HubName; } ;
struct TYPE_6__ {int TableList; int IfList; int Active; } ;
struct TYPE_5__ {int Metric; int GatewayAddress; int SubnetMask; int NetworkAddress; } ;
typedef TYPE_1__ L3TABLE ;
typedef TYPE_2__ L3SW ;
typedef TYPE_3__ L3IF ;
typedef int FOLDER ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddInt (int *,char*,int ) ;
 int CfgAddIp32 (int *,char*,int ) ;
 int CfgAddStr (int *,char*,int ) ;
 int * CfgCreateFolder (int *,char*) ;
 int Format (char*,int,char*,scalar_t__) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MAX_SIZE ;

void SiWriteL3SwitchCfg(FOLDER *f, L3SW *sw)
{
 UINT i;
 FOLDER *if_folder, *table_folder;
 char tmp[MAX_SIZE];

 if (f == ((void*)0) || sw == ((void*)0))
 {
  return;
 }


 CfgAddBool(f, "Active", sw->Active);


 if_folder = CfgCreateFolder(f, "InterfaceList");
 for (i = 0;i < LIST_NUM(sw->IfList);i++)
 {
  L3IF *e = LIST_DATA(sw->IfList, i);
  FOLDER *ff;

  Format(tmp, sizeof(tmp), "Interface%u", i);
  ff = CfgCreateFolder(if_folder, tmp);

  CfgAddStr(ff, "HubName", e->HubName);
  CfgAddIp32(ff, "IpAddress", e->IpAddress);
  CfgAddIp32(ff, "SubnetMask", e->SubnetMask);
 }


 table_folder = CfgCreateFolder(f, "RoutingTable");
 for (i = 0;i < LIST_NUM(sw->TableList);i++)
 {
  L3TABLE *e = LIST_DATA(sw->TableList, i);
  FOLDER *ff;

  Format(tmp, sizeof(tmp), "Entry%u", i);
  ff = CfgCreateFolder(table_folder, tmp);

  CfgAddIp32(ff, "NetworkAddress", e->NetworkAddress);
  CfgAddIp32(ff, "SubnetMask", e->SubnetMask);
  CfgAddIp32(ff, "GatewayAddress", e->GatewayAddress);
  CfgAddInt(ff, "Metric", e->Metric);
 }
}
