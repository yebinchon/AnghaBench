
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;


 scalar_t__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

bool IsIntInList(LIST *o, UINT i)
{
 UINT j;

 if (o == ((void*)0))
 {
  return 0;
 }

 for (j = 0;j < LIST_NUM(o);j++)
 {
  UINT *p = LIST_DATA(o, j);

  if (*p == i)
  {
   return 1;
  }
 }

 return 0;
}
