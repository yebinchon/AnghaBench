
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ Id; } ;
typedef int LIST ;
typedef TYPE_1__ AC ;


 scalar_t__ Delete (int *,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int NormalizeAcList (int *) ;

bool DelAc(LIST *o, UINT id)
{
 UINT i;

 if (o == ((void*)0) || id == 0)
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  AC *ac = LIST_DATA(o, i);

  if (ac->Id == id)
  {
   if (Delete(o, ac))
   {
    Free(ac);

    NormalizeAcList(o);

    return 1;
   }
  }
 }

 return 0;
}
