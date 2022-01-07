
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hubname ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int Name; TYPE_1__* Cedar; } ;
struct TYPE_8__ {scalar_t__ ServerType; int * FarmMemberList; } ;
struct TYPE_7__ {TYPE_2__* Server; } ;
typedef TYPE_2__ SERVER ;
typedef int LIST ;
typedef TYPE_3__ HUB ;
typedef int FARM_MEMBER ;


 int Add (int *,int *) ;
 int IsInList (int *,int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int MAX_HUBNAME_LEN ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SiCallDeleteHub (TYPE_2__*,int *,TYPE_3__*) ;
 int StrCpy (char*,int,int ) ;
 int UnlockList (int *) ;

void SiHubOfflineProc(HUB *h)
{
 SERVER *s;
 char hubname[MAX_HUBNAME_LEN + 1];
 UINT i;
 LIST *fm_list;

 if (h == ((void*)0) || h->Cedar->Server == ((void*)0) || h->Cedar->Server->ServerType != SERVER_TYPE_FARM_CONTROLLER)
 {

  return;
 }

 s = h->Cedar->Server;

 if (s->FarmMemberList == ((void*)0))
 {
  return;
 }

 StrCpy(hubname, sizeof(hubname), h->Name);

 fm_list = NewListFast(((void*)0));

 LockList(s->FarmMemberList);
 {
  while (1)
  {
   bool escape = 1;


   for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
   {
    FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);

    if (IsInList(fm_list, f) == 0)
    {
     Add(fm_list, f);
     escape = 0;

     SiCallDeleteHub(s, f, h);

     break;
    }
   }

   if (escape)
   {
    break;
   }

   UnlockList(s->FarmMemberList);
   LockList(s->FarmMemberList);
  }
 }
 UnlockList(s->FarmMemberList);

 ReleaseList(fm_list);
}
