
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int hubname ;
struct TYPE_12__ {char* HubName; int ApplyDhcpPushRoutes; } ;
typedef TYPE_1__ VH_OPTION ;
typedef int UINT ;
struct TYPE_15__ {TYPE_2__* Server; } ;
struct TYPE_14__ {scalar_t__ Type; char* Name; int SecureNATOption; } ;
struct TYPE_13__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int CHECK_RIGHT ;
 int Copy (TYPE_1__*,int ,int) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_FARM_CONTROLLER ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 TYPE_3__* GetHub (int *,char*) ;
 int GetServerCapsBool (TYPE_2__*,char*) ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 int LockHubList (int *) ;
 int MAX_HUBNAME_LEN ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,char*) ;
 int UnlockHubList (int *) ;
 int Zero (TYPE_1__*,int) ;

UINT StGetSecureNATOption(ADMIN *a, VH_OPTION *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 char hubname[MAX_HUBNAME_LEN + 1];

 StrCpy(hubname, sizeof(hubname), t->HubName);

 CHECK_RIGHT;

 LockHubList(c);
 {
  h = GetHub(c, t->HubName);
 }
 UnlockHubList(c);

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 if (h->Type == HUB_TYPE_FARM_STATIC || GetServerCapsBool(s, "b_support_securenat") == 0)
 {
  ReleaseHub(h);
  return ERR_NOT_SUPPORTED;
 }
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  ReleaseHub(h);
  return ERR_NOT_FARM_CONTROLLER;
 }

 Zero(t, sizeof(VH_OPTION));
 Copy(t, h->SecureNATOption, sizeof(VH_OPTION));
 StrCpy(t->HubName, sizeof(t->HubName), h->Name);
 t->ApplyDhcpPushRoutes = 1;

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
