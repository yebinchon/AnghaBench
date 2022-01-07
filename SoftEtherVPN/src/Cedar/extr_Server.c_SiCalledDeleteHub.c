
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int name ;
struct TYPE_3__ {int Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int PACK ;
typedef int HUB ;


 int DelHubEx (int ,int *,int) ;
 int * GetHub (int ,char*) ;
 int LockHubList (int ) ;
 int MAX_SIZE ;
 int PackGetStr (int *,char*,char*,int) ;
 int ReleaseHub (int *) ;
 int SetHubOffline (int *) ;
 int UnlockHubList (int ) ;

void SiCalledDeleteHub(SERVER *s, PACK *p)
{
 char name[MAX_SIZE];
 HUB *h;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 if (PackGetStr(p, "HubName", name, sizeof(name)) == 0)
 {
  return;
 }

 LockHubList(s->Cedar);

 h = GetHub(s->Cedar, name);
 if (h == ((void*)0))
 {
  UnlockHubList(s->Cedar);
  return;
 }
 UnlockHubList(s->Cedar);

 SetHubOffline(h);

 LockHubList(s->Cedar);

 DelHubEx(s->Cedar, h, 1);

 UnlockHubList(s->Cedar);

 ReleaseHub(h);
}
