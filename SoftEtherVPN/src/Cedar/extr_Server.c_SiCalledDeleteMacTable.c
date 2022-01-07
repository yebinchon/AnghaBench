
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hubname ;
typedef int UINT ;
struct TYPE_7__ {int MacHashTable; } ;
struct TYPE_6__ {int Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int PACK ;
typedef int MAC_TABLE_ENTRY ;
typedef TYPE_2__ HUB ;


 int DeleteHash (int ,int *) ;
 int Free (int *) ;
 TYPE_2__* GetHub (int ,char*) ;
 int * HashListKeyToPointer (int ,int ) ;
 int LockHashList (int ) ;
 int LockHubList (int ) ;
 int MAX_HUBNAME_LEN ;
 int PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,char*,int) ;
 int ReleaseHub (TYPE_2__*) ;
 int UnlockHashList (int ) ;
 int UnlockHubList (int ) ;

void SiCalledDeleteMacTable(SERVER *s, PACK *p)
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

 LockHashList(h->MacHashTable);
 {
  MAC_TABLE_ENTRY *e = HashListKeyToPointer(h->MacHashTable, key);
  DeleteHash(h->MacHashTable, e);
  Free(e);
 }
 UnlockHashList(h->MacHashTable);

 ReleaseHub(h);
}
