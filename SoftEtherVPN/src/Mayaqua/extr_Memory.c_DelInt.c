
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;


 int Add (int *,scalar_t__*) ;
 int Delete (int *,scalar_t__*) ;
 int Free (scalar_t__*) ;
 scalar_t__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;

void DelInt(LIST *o, UINT i)
{
 LIST *o2 = ((void*)0);
 UINT j;

 if (o == ((void*)0))
 {
  return;
 }

 for (j = 0;j < LIST_NUM(o);j++)
 {
  UINT *p = LIST_DATA(o, j);

  if (*p == i)
  {
   if (o2 == ((void*)0))
   {
    o2 = NewListFast(((void*)0));
   }
   Add(o2, p);
  }
 }

 for (j = 0;j < LIST_NUM(o2);j++)
 {
  UINT *p = LIST_DATA(o2, j);

  Delete(o, p);

  Free(p);
 }

 if (o2 != ((void*)0))
 {
  ReleaseList(o2);
 }
}
