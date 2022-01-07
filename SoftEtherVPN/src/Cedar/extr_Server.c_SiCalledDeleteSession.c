
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int name ;
typedef int hubname ;
struct TYPE_8__ {int Cedar; } ;
struct TYPE_7__ {int BridgeMode; int LinkModeServer; int SecureNATMode; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ SERVER ;
typedef int PACK ;
typedef int HUB ;


 int * GetHub (int ,char*) ;
 TYPE_1__* GetSessionByName (int *,char*) ;
 int LockHubList (int ) ;
 int MAX_HUBNAME_LEN ;
 int MAX_SESSION_NAME_LEN ;
 int PackGetStr (int *,char*,char*,int) ;
 int ReleaseHub (int *) ;
 int ReleaseSession (TYPE_1__*) ;
 int StopSession (TYPE_1__*) ;
 int UnlockHubList (int ) ;

void SiCalledDeleteSession(SERVER *s, PACK *p)
{
 char name[MAX_SESSION_NAME_LEN + 1];
 char hubname[MAX_HUBNAME_LEN + 1];
 HUB *h;
 SESSION *sess;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 if (PackGetStr(p, "HubName", hubname, sizeof(hubname)) == 0)
 {
  return;
 }
 if (PackGetStr(p, "SessionName", name, sizeof(name)) == 0)
 {
  return;
 }

 LockHubList(s->Cedar);
 {
  h = GetHub(s->Cedar, hubname);
 }
 UnlockHubList(s->Cedar);

 if (h == ((void*)0))
 {
  return;
 }

 sess = GetSessionByName(h, name);

 if (sess != ((void*)0))
 {
  if (sess->BridgeMode == 0 && sess->LinkModeServer == 0 && sess->SecureNATMode == 0)
  {
   StopSession(sess);
  }
  ReleaseSession(sess);
 }

 ReleaseHub(h);
}
