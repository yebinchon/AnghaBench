
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_11__ {int hostname; } ;
struct TYPE_10__ {size_t NumIpTable; TYPE_1__* IpTables; } ;
struct TYPE_9__ {int RemoteItem; int RemoteHostname; } ;
typedef int SERVER ;
typedef TYPE_2__ RPC_ENUM_IP_TABLE ;
typedef int PACK ;
typedef TYPE_3__ FARM_MEMBER ;


 int FreePack (int *) ;
 int InRpcEnumIpTable (TYPE_2__*,int *) ;
 int * NewPack () ;
 int PackAddStr (int *,char*,char*) ;
 int * SiCallTask (TYPE_3__*,int *,char*) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;

void SiCallEnumIpTable(SERVER *s, FARM_MEMBER *f, char *hubname, RPC_ENUM_IP_TABLE *t)
{
 PACK *p;
 UINT i;

 if (s == ((void*)0) || f == ((void*)0) || hubname == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 p = NewPack();
 PackAddStr(p, "HubName", hubname);

 p = SiCallTask(f, p, "enumiptable");

 Zero(t, sizeof(RPC_ENUM_IP_TABLE));
 InRpcEnumIpTable(t, p);

 for (i = 0;i < t->NumIpTable;i++)
 {
  t->IpTables[i].RemoteItem = 1;
  StrCpy(t->IpTables[i].RemoteHostname, sizeof(t->IpTables[i].RemoteHostname),
   f->hostname);
 }

 FreePack(p);
}
