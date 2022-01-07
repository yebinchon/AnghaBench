
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {int IsSrcUsernameIncludeOrExclude; int IsDestUsernameIncludeOrExclude; scalar_t__ SrcPortStart; scalar_t__ DestPortStart; scalar_t__ Id; void* Loss; void* Jitter; void* Delay; void* DestPortEnd; void* SrcPortEnd; int DestUsername; void* DestUsernameHash; int SrcUsername; void* SrcUsernameHash; } ;
struct TYPE_11__ {int AccessList; } ;
typedef TYPE_1__ HUB ;
typedef TYPE_2__ ACCESS ;


 int ACCESS_LIST_EXCLUDED_PREFIX ;
 int ACCESS_LIST_INCLUDED_PREFIX ;
 int Add (int ,TYPE_2__*) ;
 int Copy (TYPE_2__*,TYPE_2__*,int) ;
 int HUB_ACCESSLIST_DELAY_MAX ;
 int HUB_ACCESSLIST_JITTER_MAX ;
 int HUB_ACCESSLIST_LOSS_MAX ;
 int Insert (int ,TYPE_2__*) ;
 int IsEmptyStr (int ) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 void* MAKESURE (void*,int ,int ) ;
 void* MAX (void*,scalar_t__) ;
 scalar_t__ MAX_ACCESSLISTS ;
 int MakeSimpleUsernameRemoveNtDomain (int ,int,int ) ;
 TYPE_2__* Malloc (int) ;
 int StartWith (int ,int ) ;
 int UnlockList (int ) ;
 void* UsernameToInt64 (int ) ;

void AddAccessListEx(HUB *hub, ACCESS *a, bool no_sort, bool no_reassign_id)
{

 if (hub == ((void*)0) || a == ((void*)0))
 {
  return;
 }

 LockList(hub->AccessList);
 {
  ACCESS *access;
  UINT i;


  if (LIST_NUM(hub->AccessList) >= MAX_ACCESSLISTS)
  {
   UnlockList(hub->AccessList);
   return;
  }

  access = Malloc(sizeof(ACCESS));
  Copy(access, a, sizeof(ACCESS));

  access->IsSrcUsernameIncludeOrExclude = 0;
  access->IsDestUsernameIncludeOrExclude = 0;


  if (IsEmptyStr(access->SrcUsername) == 0)
  {
   if (StartWith(access->SrcUsername, ACCESS_LIST_INCLUDED_PREFIX) == 0 && StartWith(access->SrcUsername, ACCESS_LIST_EXCLUDED_PREFIX) == 0)
   {
    MakeSimpleUsernameRemoveNtDomain(access->SrcUsername, sizeof(access->SrcUsername), access->SrcUsername);
   }
   else
   {
    access->IsSrcUsernameIncludeOrExclude = 1;
   }
  }
  if (IsEmptyStr(access->DestUsername) == 0)
  {
   if (StartWith(access->DestUsername, ACCESS_LIST_INCLUDED_PREFIX) == 0 && StartWith(access->DestUsername, ACCESS_LIST_EXCLUDED_PREFIX) == 0)
   {
    MakeSimpleUsernameRemoveNtDomain(access->DestUsername, sizeof(access->DestUsername), access->DestUsername);
   }
   else
   {
    access->IsDestUsernameIncludeOrExclude = 1;
   }
  }

  access->SrcUsernameHash = UsernameToInt64(access->SrcUsername);
  access->DestUsernameHash = UsernameToInt64(access->DestUsername);


  if (access->SrcPortStart != 0)
  {
   access->SrcPortEnd = MAX(access->SrcPortEnd, access->SrcPortStart);
  }
  if (access->DestPortStart != 0)
  {
   access->DestPortEnd = MAX(access->DestPortEnd, access->DestPortStart);
  }


  access->Delay = MAKESURE(access->Delay, 0, HUB_ACCESSLIST_DELAY_MAX);
  access->Jitter = MAKESURE(access->Jitter, 0, HUB_ACCESSLIST_JITTER_MAX);
  access->Loss = MAKESURE(access->Loss, 0, HUB_ACCESSLIST_LOSS_MAX);

  if (no_sort == 0)
  {
   Insert(hub->AccessList, access);
  }
  else
  {
   Add(hub->AccessList, access);
  }


  if (no_reassign_id == 0)
  {
   for (i = 0;i < LIST_NUM(hub->AccessList);i++)
   {
    ACCESS *a = LIST_DATA(hub->AccessList, i);
    a->Id = (i + 1);
   }
  }
 }
 UnlockList(hub->AccessList);
}
