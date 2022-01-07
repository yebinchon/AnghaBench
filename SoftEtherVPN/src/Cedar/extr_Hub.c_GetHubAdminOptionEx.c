
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int t ;
typedef int UINT ;
struct TYPE_8__ {int Value; int Name; } ;
struct TYPE_7__ {int AdminOptionList; } ;
typedef TYPE_1__ HUB ;
typedef TYPE_2__ ADMIN_OPTION ;


 int LockList (int ) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int StrCpy (int ,int,char*) ;
 int Trim (int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_2__*,int) ;

UINT GetHubAdminOptionEx(HUB *h, char *name, UINT default_value)
{
 UINT ret = default_value;

 if (h == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 LockList(h->AdminOptionList);
 {
  ADMIN_OPTION *a, t;

  Zero(&t, sizeof(t));
  StrCpy(t.Name, sizeof(t.Name), name);
  Trim(t.Name);

  a = Search(h->AdminOptionList, &t);

  if (a != ((void*)0))
  {
   ret = a->Value;
  }
 }
 UnlockList(h->AdminOptionList);

 return ret;
}
