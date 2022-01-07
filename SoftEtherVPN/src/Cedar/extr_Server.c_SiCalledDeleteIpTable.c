
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hubname ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int IpTable; } ;
struct TYPE_6__ {int Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int PACK ;
typedef int IP_TABLE_ENTRY ;
typedef TYPE_2__ HUB ;


 int Delete (int ,int *) ;
 int Free (int *) ;
 TYPE_2__* GetHub (int ,char*) ;
 scalar_t__ IsInList (int ,void*) ;
 int LockHubList (int ) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 scalar_t__ PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,char*,int) ;
 int ReleaseHub (TYPE_2__*) ;
 int UnlockHubList (int ) ;
 int UnlockList (int ) ;

void SiCalledDeleteIpTable(SERVER *s, PACK *p)
{
 UINT key;
 char hubname[MAX_HUBNAME_LEN + 1];
 HUB *h;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 if (PackGetStr(p, "HubName", hubname, sizeof(hubname)) == 0)
 {
  return;
 }
 key = PackGetInt(p, "Key");

 LockHubList(s->Cedar);
 {
  h = GetHub(s->Cedar, hubname);
 }
 UnlockHubList(s->Cedar);

 if (h == ((void*)0))
 {
  return;
 }

 LockList(h->IpTable);
 {
  if (IsInList(h->IpTable, (void *)key))
  {
   IP_TABLE_ENTRY *e = (IP_TABLE_ENTRY *)key;
   Delete(h->IpTable, e);
   Free(e);
  }
 }
 UnlockList(h->IpTable);

 ReleaseHub(h);
}
