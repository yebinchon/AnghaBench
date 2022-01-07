
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int hubname ;
typedef int UINT ;
struct TYPE_16__ {TYPE_2__* Server; } ;
struct TYPE_15__ {TYPE_1__* HubDb; } ;
struct TYPE_14__ {char* HubName; int Crl; int Key; } ;
struct TYPE_13__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_12__ {int CrlList; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_CRL ;
typedef TYPE_4__ HUB ;
typedef int CRL ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int CHECK_RIGHT ;
 int CopyCrl (int *) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int FreeRpcCrl (TYPE_3__*) ;
 TYPE_4__* GetHub (int *,char*) ;
 int * ListKeyToPointer (int ,int ) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,char*) ;
 int UnlockList (int ) ;
 int Zero (TYPE_3__*,int) ;

UINT StGetCrl(ADMIN *a, RPC_CRL *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 UINT key;
 char hubname[MAX_HUBNAME_LEN + 1];

 CHECK_RIGHT;
 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 StrCpy(hubname, sizeof(hubname), t->HubName);
 key = t->Key;

 FreeRpcCrl(t);
 Zero(t, sizeof(RPC_CRL));
 StrCpy(t->HubName, sizeof(t->HubName), hubname);
 t->Key = key;

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
    CRL *crl = ListKeyToPointer(h->HubDb->CrlList, t->Key);

    if (crl == ((void*)0))
    {
     ret = ERR_OBJECT_NOT_FOUND;
    }
    else
    {
     t->Crl = CopyCrl(crl);
    }
   }
   UnlockList(h->HubDb->CrlList);
  }

  ReleaseHub(h);
 }

 return ret;
}
