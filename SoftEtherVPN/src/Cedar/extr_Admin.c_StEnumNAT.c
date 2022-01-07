
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int tmp ;
typedef int hubname ;
typedef scalar_t__ UINT ;
struct TYPE_26__ {TYPE_2__* Server; } ;
struct TYPE_25__ {int Me; } ;
struct TYPE_24__ {scalar_t__ Type; int lock_online; TYPE_1__* SecureNAT; } ;
struct TYPE_23__ {int NumItem; int HubName; } ;
struct TYPE_22__ {int FarmMemberList; int * Cedar; } ;
struct TYPE_21__ {int Nat; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_ENUM_NAT ;
typedef TYPE_4__ HUB ;
typedef TYPE_5__ FARM_MEMBER ;
typedef int CEDAR ;
typedef TYPE_6__ ADMIN ;


 int CHECK_RIGHT ;
 int Copy (TYPE_3__*,TYPE_3__*,int) ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_SNAT_NOT_RUNNING ;
 int FreeRpcEnumNat (TYPE_3__*) ;
 TYPE_4__* GetHub (int *,int ) ;
 int GetServerCapsBool (TYPE_2__*,char*) ;
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 TYPE_5__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int NtEnumNatList (int ,TYPE_3__*) ;
 int ReleaseHub (TYPE_4__*) ;
 int SiCallEnumNat (TYPE_2__*,TYPE_5__*,char*,TYPE_3__*) ;
 int StrCpy (char*,int,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;
 int Zero (TYPE_3__*,int) ;

UINT StEnumNAT(ADMIN *a, RPC_ENUM_NAT *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];
 UINT i;

 CHECK_RIGHT;

 StrCpy(hubname, sizeof(hubname), t->HubName);

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

 Lock(h->lock_online);
 {
  if (h->SecureNAT == ((void*)0))
  {
   ret = ERR_SNAT_NOT_RUNNING;
  }
  else
  {
   NtEnumNatList(h->SecureNAT->Nat, t);
  }
 }
 Unlock(h->lock_online);

 if (h->Type == HUB_TYPE_FARM_DYNAMIC)
 {
  if (ret == ERR_SNAT_NOT_RUNNING)
  {

   LockList(s->FarmMemberList);
   {
    for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
    {
     FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);
     if (f->Me == 0)
     {
      RPC_ENUM_NAT tmp;

      Zero(&tmp, sizeof(tmp));

      SiCallEnumNat(s, f, hubname, &tmp);

      if (tmp.NumItem >= 1)
      {
       FreeRpcEnumNat(t);
       Copy(t, &tmp, sizeof(RPC_ENUM_NAT));
       ret = ERR_NO_ERROR;
       break;
      }
      else
      {
       FreeRpcEnumNat(&tmp);
      }
     }
    }
   }
   UnlockList(s->FarmMemberList);
  }
 }

 ReleaseHub(h);

 ret = ERR_NO_ERROR;

 return ret;
}
