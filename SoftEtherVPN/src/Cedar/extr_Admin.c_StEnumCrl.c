
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int hubname ;
typedef size_t UINT ;
struct TYPE_18__ {int Key; int CrlInfo; } ;
struct TYPE_17__ {TYPE_2__* Server; } ;
struct TYPE_16__ {TYPE_1__* HubDb; } ;
struct TYPE_15__ {char* HubName; size_t NumItem; TYPE_6__* Items; } ;
struct TYPE_14__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_13__ {int CrlList; } ;
typedef TYPE_2__ SERVER ;
typedef int RPC_ENUM_CRL_ITEM ;
typedef TYPE_3__ RPC_ENUM_CRL ;
typedef TYPE_4__ HUB ;
typedef int CRL ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int CHECK_RIGHT ;
 size_t ERR_HUB_NOT_FOUND ;
 size_t ERR_NOT_SUPPORTED ;
 size_t ERR_NO_ERROR ;
 int Free (int *) ;
 int FreeRpcEnumCrl (TYPE_3__*) ;
 int * GenerateCrlStr (int *) ;
 TYPE_4__* GetHub (int *,char*) ;
 int * LIST_DATA (int ,size_t) ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int POINTER_TO_KEY (int *) ;
 int ReleaseHub (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,char*) ;
 int UniStrCpy (int ,int,int *) ;
 int UnlockList (int ) ;
 int Zero (TYPE_3__*,int) ;
 TYPE_6__* ZeroMalloc (int) ;

UINT StEnumCrl(ADMIN *a, RPC_ENUM_CRL *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];

 CHECK_RIGHT;
 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 StrCpy(hubname, sizeof(hubname), t->HubName);
 FreeRpcEnumCrl(t);
 Zero(t, sizeof(RPC_ENUM_CRL));

 StrCpy(t->HubName, sizeof(t->HubName), hubname);

 h = GetHub(c, hubname);

 if (h == ((void*)0))
 {
  ret = ERR_HUB_NOT_FOUND;
 }
 else
 {
  if (h->HubDb == ((void*)0))
  {
   ret = ERR_NOT_SUPPORTED;
  }
  else
  {
   LockList(h->HubDb->CrlList);
   {
    UINT i;

    t->NumItem = LIST_NUM(h->HubDb->CrlList);
    t->Items = ZeroMalloc(sizeof(RPC_ENUM_CRL_ITEM) * t->NumItem);

    for (i = 0;i < LIST_NUM(h->HubDb->CrlList);i++)
    {
     CRL *crl = LIST_DATA(h->HubDb->CrlList, i);
     wchar_t *info = GenerateCrlStr(crl);

     UniStrCpy(t->Items[i].CrlInfo, sizeof(t->Items[i].CrlInfo), info);
     Free(info);

     t->Items[i].Key = POINTER_TO_KEY(crl);
    }
   }
   UnlockList(h->HubDb->CrlList);
  }

  ReleaseHub(h);
 }

 return ret;
}
