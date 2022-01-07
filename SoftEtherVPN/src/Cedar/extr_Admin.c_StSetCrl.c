
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int hubname ;
typedef int UINT ;
struct TYPE_18__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_17__ {TYPE_1__* HubDb; } ;
struct TYPE_16__ {int Crl; int Key; int HubName; } ;
struct TYPE_15__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_14__ {int CrlList; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_CRL ;
typedef TYPE_4__ HUB ;
typedef int CRL ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int ALog (TYPE_5__*,TYPE_4__*,char*) ;
 int CHECK_RIGHT ;
 int * CopyCrl (int ) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int FreeCrl (int *) ;
 TYPE_4__* GetHub (int *,char*) ;
 scalar_t__ GetHubAdminOption (TYPE_4__*,char*) ;
 int IncrementServerConfigRevision (TYPE_2__*) ;
 int * ListKeyToPointer (int ,int ) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_4__*) ;
 scalar_t__ ReplaceListPointer (int ,int *,int *) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,int ) ;
 int UnlockList (int ) ;

UINT StSetCrl(ADMIN *a, RPC_CRL *t)
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
     CRL *crl = ListKeyToPointer(h->HubDb->CrlList, t->Key);

     if (crl == ((void*)0))
     {
      ret = ERR_OBJECT_NOT_FOUND;
     }
     else
     {
      CRL *new_crl = CopyCrl(t->Crl);
      if (ReplaceListPointer(h->HubDb->CrlList, crl, new_crl))
      {
       ALog(a, h, "LA_ADD_CRL");
       FreeCrl(crl);

       IncrementServerConfigRevision(s);
      }
     }
    }
    UnlockList(h->HubDb->CrlList);
   }
  }

  ReleaseHub(h);
 }

 return ret;
}
