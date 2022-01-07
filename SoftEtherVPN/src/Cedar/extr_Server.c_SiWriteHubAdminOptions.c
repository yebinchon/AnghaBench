
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int Value; int Name; } ;
struct TYPE_5__ {int AdminOptionList; } ;
typedef TYPE_1__ HUB ;
typedef int FOLDER ;
typedef TYPE_2__ ADMIN_OPTION ;


 int CfgAddInt (int *,int ,int ) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

void SiWriteHubAdminOptions(FOLDER *f, HUB *h)
{

 if (f == ((void*)0) || h == ((void*)0))
 {
  return;
 }

 LockList(h->AdminOptionList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(h->AdminOptionList);i++)
  {
   ADMIN_OPTION *a = LIST_DATA(h->AdminOptionList, i);

   CfgAddInt(f, a->Name, a->Value);
  }
 }
 UnlockList(h->AdminOptionList);
}
