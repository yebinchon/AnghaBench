
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int CaList; } ;
typedef TYPE_1__ CEDAR ;


 int CloneX (int *) ;
 scalar_t__ CompareX (int *,int *) ;
 int Insert (int ,int ) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

void AddCa(CEDAR *cedar, X *x)
{

 if (cedar == ((void*)0) || x == ((void*)0))
 {
  return;
 }

 LockList(cedar->CaList);
 {
  UINT i;
  bool ok = 1;

  for (i = 0;i < LIST_NUM(cedar->CaList);i++)
  {
   X *exist_x = LIST_DATA(cedar->CaList, i);
   if (CompareX(exist_x, x))
   {
    ok = 0;
    break;
   }
  }

  if (ok)
  {
   Insert(cedar->CaList, CloneX(x));
  }
 }
 UnlockList(cedar->CaList);
}
