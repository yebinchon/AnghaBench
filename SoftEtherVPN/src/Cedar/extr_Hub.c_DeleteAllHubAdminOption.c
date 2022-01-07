
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int AdminOptionList; } ;
typedef TYPE_1__ HUB ;


 int DeleteAll (int ) ;
 int Free (int ) ;
 int LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

void DeleteAllHubAdminOption(HUB *h, bool lock)
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

 for (i = 0;i < LIST_NUM(h->AdminOptionList);i++)
 {
  Free(LIST_DATA(h->AdminOptionList, i));
 }

 DeleteAll(h->AdminOptionList);

 if (lock)
 {
  UnlockList(h->AdminOptionList);
 }
}
