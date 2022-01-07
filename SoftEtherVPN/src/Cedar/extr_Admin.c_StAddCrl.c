
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int hubname ;
typedef int UINT ;
struct TYPE_21__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_20__ {scalar_t__ Bridge; } ;
struct TYPE_19__ {TYPE_1__* HubDb; } ;
struct TYPE_18__ {int Crl; int HubName; } ;
struct TYPE_17__ {scalar_t__ ServerType; TYPE_5__* Cedar; } ;
struct TYPE_16__ {int CrlList; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_CRL ;
typedef TYPE_4__ HUB ;
typedef int CRL ;
typedef TYPE_5__ CEDAR ;
typedef TYPE_6__ ADMIN ;


 int ALog (TYPE_6__*,TYPE_4__*,char*) ;
 int CHECK_RIGHT ;
 int * CopyCrl (int ) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 TYPE_4__* GetHub (TYPE_5__*,char*) ;
 scalar_t__ GetHubAdminOption (TYPE_4__*,char*) ;
 int IncrementServerConfigRevision (TYPE_2__*) ;
 int Insert (int ,int *) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 scalar_t__ MAX_HUB_CRLS ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,int ) ;
 int UnlockList (int ) ;

UINT StAddCrl(ADMIN *a, RPC_CRL *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];

 if (c->Bridge)
 {
  return ERR_NOT_SUPPORTED;
 }

 CHECK_RIGHT;
 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 StrCpy(hubname, sizeof(hubname), t->HubName);

 h = GetHub(c, hubname);

 if (h == ((void*)0))
 {
  ret = ERR_HUB_NOT_FOUND;
 }
 else
 {
  if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_crl_list") != 0)
  {
   ret = ERR_NOT_ENOUGH_RIGHT;
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
     if (LIST_NUM(h->HubDb->CrlList) < MAX_HUB_CRLS)
     {
      CRL *crl = CopyCrl(t->Crl);

      Insert(h->HubDb->CrlList, crl);

      ALog(a, h, "LA_SET_CRL");

      IncrementServerConfigRevision(s);
     }
    }
    UnlockList(h->HubDb->CrlList);
   }
  }

  ReleaseHub(h);
 }

 return ret;
}
