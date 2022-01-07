
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_19__ {int IpTable; } ;
struct TYPE_18__ {int UpdatedTime; int CreatedTime; int DhcpAllocated; int Ip; TYPE_1__* Session; } ;
struct TYPE_17__ {int NumIpTable; TYPE_3__* IpTables; int HubName; } ;
struct TYPE_16__ {int RemoteHostname; void* UpdatedTime; void* CreatedTime; int DhcpAllocated; int IpAddress; int IpV6; int Ip; int SessionName; int Key; } ;
struct TYPE_15__ {int * Cedar; } ;
struct TYPE_14__ {char* Name; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_ENUM_IP_TABLE_ITEM ;
typedef TYPE_4__ RPC_ENUM_IP_TABLE ;
typedef TYPE_5__ IP_TABLE_ENTRY ;
typedef int IP ;
typedef TYPE_6__ HUB ;
typedef int CEDAR ;


 int Copy (int *,int *,int) ;
 size_t ERR_HUB_NOT_FOUND ;
 size_t ERR_INTERNAL_ERROR ;
 size_t ERR_NO_ERROR ;
 TYPE_6__* GetHub (int *,char*) ;
 int GetMachineName (int ,int) ;
 int IPToUINT (int *) ;
 TYPE_5__* LIST_DATA (int ,size_t) ;
 int LIST_NUM (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int POINTER_TO_KEY (TYPE_5__*) ;
 int ReleaseHub (TYPE_6__*) ;
 int StrCpy (int ,int,char*) ;
 void* TickToTime (int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;
 TYPE_3__* ZeroMalloc (int) ;

UINT SiEnumIpTable(SERVER *s, char *hubname, RPC_ENUM_IP_TABLE *t)
{
 CEDAR *c;
 UINT i;
 HUB *h = ((void*)0);

 if (s == ((void*)0) || hubname == ((void*)0) || t == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 c = s->Cedar;

 LockHubList(c);
 {
  h = GetHub(c, hubname);
 }
 UnlockHubList(c);

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 StrCpy(t->HubName, sizeof(t->HubName), hubname);

 LockList(h->IpTable);
 {
  t->NumIpTable = LIST_NUM(h->IpTable);
  t->IpTables = ZeroMalloc(sizeof(RPC_ENUM_IP_TABLE_ITEM) * t->NumIpTable);

  for (i = 0;i < t->NumIpTable;i++)
  {
   RPC_ENUM_IP_TABLE_ITEM *e = &t->IpTables[i];
   IP_TABLE_ENTRY *table = LIST_DATA(h->IpTable, i);

   e->Key = POINTER_TO_KEY(table);
   StrCpy(e->SessionName, sizeof(e->SessionName), table->Session->Name);
   e->Ip = IPToUINT(&table->Ip);
   Copy(&e->IpV6, &table->Ip, sizeof(IP));
   Copy(&e->IpAddress, &table->Ip, sizeof(IP));
   e->DhcpAllocated = table->DhcpAllocated;
   e->CreatedTime = TickToTime(table->CreatedTime);
   e->UpdatedTime = TickToTime(table->UpdatedTime);

   GetMachineName(e->RemoteHostname, sizeof(e->RemoteHostname));
  }
 }
 UnlockList(h->IpTable);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
