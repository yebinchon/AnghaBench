
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int t ;
typedef size_t UINT ;
struct TYPE_11__ {int Value; int Name; } ;
struct TYPE_10__ {int AdminOptionList; } ;
typedef TYPE_1__ HUB ;
typedef TYPE_2__ ADMIN_OPTION ;


 int Insert (int ,TYPE_2__*) ;
 int LockList (int ) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;
 TYPE_2__* admin_options ;
 size_t num_admin_options ;

void AddHubAdminOptionsDefaults(HUB *h, bool lock)
{
 UINT i;

 if (h == ((void*)0))
 {
  return;
 }

 if (lock)
 {
  LockList(h->AdminOptionList);
 }

 for (i = 0;i < num_admin_options;i++)
 {
  ADMIN_OPTION *e = &admin_options[i];
  ADMIN_OPTION t, *r;

  Zero(&t, sizeof(t));
  StrCpy(t.Name, sizeof(t.Name), e->Name);

  r = Search(h->AdminOptionList, &t);
  if (r == ((void*)0))
  {
   ADMIN_OPTION *a = ZeroMalloc(sizeof(ADMIN_OPTION));

   StrCpy(a->Name, sizeof(a->Name), e->Name);
   a->Value = e->Value;

   Insert(h->AdminOptionList, a);
  }
 }

 if (lock)
 {
  UnlockList(h->AdminOptionList);
 }
}
