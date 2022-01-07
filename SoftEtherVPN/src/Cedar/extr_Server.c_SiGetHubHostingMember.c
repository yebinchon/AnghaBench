
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_24__ {int HubList; scalar_t__ Me; } ;
struct TYPE_23__ {char* Name; scalar_t__ Type; } ;
struct TYPE_22__ {char* Name; } ;
struct TYPE_21__ {int FarmMemberList; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ HUB_LIST ;
typedef TYPE_3__ HUB ;
typedef TYPE_4__ FARM_MEMBER ;
typedef int CONNECTION ;


 scalar_t__ HUB_TYPE_FARM_STATIC ;
 TYPE_4__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int SiAddHubCreateHistory (TYPE_1__*,char*) ;
 int SiCallCreateHub (TYPE_1__*,TYPE_4__*,TYPE_3__*) ;
 int SiCallUpdateHub (TYPE_1__*,TYPE_4__*,TYPE_3__*) ;
 TYPE_4__* SiGetNextFarmMember (TYPE_1__*,int *,TYPE_3__*) ;
 int StrCpy (char*,int,char*) ;
 int UnlockList (int ) ;

FARM_MEMBER *SiGetHubHostingMember(SERVER *s, HUB *h, bool admin_mode, CONNECTION *c)
{
 FARM_MEMBER *ret = ((void*)0);
 char name[MAX_SIZE];
 UINT i;

 if (s == ((void*)0) || h == ((void*)0) || c == ((void*)0))
 {
  return ((void*)0);
 }

 StrCpy(name, sizeof(name), h->Name);

 if (h->Type == HUB_TYPE_FARM_STATIC)
 {

  if (admin_mode == 0)
  {
   ret = SiGetNextFarmMember(s, c, h);
  }
  else
  {
   UINT i;
   ret = ((void*)0);

   for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
   {
    FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);
    if (f->Me)
    {
     ret = f;
     break;
    }
   }
  }
 }
 else
 {

  for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
  {
   FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);
   HUB_LIST *hh, t;
   StrCpy(t.Name, sizeof(t.Name), name);
   LockList(f->HubList);
   {
    hh = Search(f->HubList, &t);
    if (hh != ((void*)0))
    {

     ret = f;
    }
   }
   UnlockList(f->HubList);
  }

  if (ret == ((void*)0))
  {

   FARM_MEMBER *f;


   ret = SiGetNextFarmMember(s, c, h);

   f = ret;
   if (f != ((void*)0))
   {

    SiAddHubCreateHistory(s, name);
    SiCallCreateHub(s, f, h);
    SiCallUpdateHub(s, f, h);
   }
  }
 }

 return ret;
}
