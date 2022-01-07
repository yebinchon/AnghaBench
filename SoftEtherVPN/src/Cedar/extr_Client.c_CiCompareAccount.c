
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ClientOption; } ;
struct TYPE_3__ {int AccountName; } ;
typedef TYPE_2__ ACCOUNT ;


 int UniStrCmpi (int ,int ) ;

int CiCompareAccount(void *p1, void *p2)
{
 ACCOUNT *a1, *a2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 a1 = *(ACCOUNT **)p1;
 a2 = *(ACCOUNT **)p2;
 if (a1 == ((void*)0) || a2 == ((void*)0))
 {
  return 0;
 }

 return UniStrCmpi(a1->ClientOption->AccountName, a2->ClientOption->AccountName);
}
