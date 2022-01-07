
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int hubname ;
struct TYPE_18__ {int notAfter; int issuer_name; int subject_name; } ;
typedef TYPE_2__ X ;
typedef size_t UINT ;
struct TYPE_23__ {TYPE_3__* Server; } ;
struct TYPE_22__ {TYPE_1__* HubDb; } ;
struct TYPE_21__ {char* HubName; int NumCa; TYPE_4__* Ca; } ;
struct TYPE_20__ {int Expires; int IssuerName; int SubjectName; int Key; } ;
struct TYPE_19__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_17__ {int * RootCertList; } ;
typedef TYPE_3__ SERVER ;
typedef TYPE_4__ RPC_HUB_ENUM_CA_ITEM ;
typedef TYPE_5__ RPC_HUB_ENUM_CA ;
typedef TYPE_6__ HUB ;
typedef int CEDAR ;
typedef TYPE_7__ ADMIN ;


 int CHECK_RIGHT ;
 size_t ERR_HUB_NOT_FOUND ;
 size_t ERR_NOT_FARM_CONTROLLER ;
 size_t ERR_NO_ERROR ;
 int FreeRpcHubEnumCa (TYPE_5__*) ;
 int GetAllNameFromNameEx (int ,int,int ) ;
 TYPE_6__* GetHub (int *,char*) ;
 TYPE_2__* LIST_DATA (int *,size_t) ;
 int LIST_NUM (int *) ;
 int LockHubList (int *) ;
 int LockList (int *) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int POINTER_TO_KEY (TYPE_2__*) ;
 int ReleaseHub (TYPE_6__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,char*) ;
 int UnlockHubList (int *) ;
 int UnlockList (int *) ;
 int Zero (TYPE_5__*,int) ;
 TYPE_4__* ZeroMalloc (int) ;

UINT StEnumCa(ADMIN *a, RPC_HUB_ENUM_CA *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 char hubname[MAX_HUBNAME_LEN + 1];
 UINT i;

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 NO_SUPPORT_FOR_BRIDGE;

 StrCpy(hubname, sizeof(hubname), t->HubName);

 FreeRpcHubEnumCa(t);
 Zero(t, sizeof(RPC_HUB_ENUM_CA));

 StrCpy(t->HubName, sizeof(t->HubName), hubname);
 CHECK_RIGHT;

 LockHubList(c);
 {
  h = GetHub(c, hubname);
 }
 UnlockHubList(c);

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 Zero(t, sizeof(RPC_HUB_ENUM_CA));
 StrCpy(t->HubName, sizeof(t->HubName), hubname);

 if (h->HubDb->RootCertList != ((void*)0))
 {
  LockList(h->HubDb->RootCertList);
  {
   t->NumCa = LIST_NUM(h->HubDb->RootCertList);
   t->Ca = ZeroMalloc(sizeof(RPC_HUB_ENUM_CA_ITEM) * t->NumCa);

   for (i = 0;i < t->NumCa;i++)
   {
    RPC_HUB_ENUM_CA_ITEM *e = &t->Ca[i];
    X *x = LIST_DATA(h->HubDb->RootCertList, i);

    e->Key = POINTER_TO_KEY(x);
    GetAllNameFromNameEx(e->SubjectName, sizeof(e->SubjectName), x->subject_name);
    GetAllNameFromNameEx(e->IssuerName, sizeof(e->IssuerName), x->issuer_name);
    e->Expires = x->notAfter;
   }
  }
  UnlockList(h->HubDb->RootCertList);
 }

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
