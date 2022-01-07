
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int CaList; } ;
typedef TYPE_1__ CEDAR ;


 int Delete (int ,int *) ;
 int FreeX (int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 scalar_t__ POINTER_TO_KEY (int *) ;
 int UnlockList (int ) ;

bool DeleteCa(CEDAR *cedar, UINT ptr)
{
 bool b = 0;

 if (cedar == ((void*)0) || ptr == 0)
 {
  return 0;
 }

 LockList(cedar->CaList);
 {
  UINT i;

  for (i = 0;i < LIST_NUM(cedar->CaList);i++)
  {
   X *x = LIST_DATA(cedar->CaList, i);

   if (POINTER_TO_KEY(x) == ptr)
   {
    Delete(cedar->CaList, x);
    FreeX(x);

    b = 1;

    break;
   }
  }
 }
 UnlockList(cedar->CaList);

 return b;
}
