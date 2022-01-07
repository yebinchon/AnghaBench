
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;


 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

bool IsInList(LIST *o, void *p)
{
 UINT i;

 if (o == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  void *q = LIST_DATA(o, i);
  if (p == q)
  {
   return 1;
  }
 }

 return 0;
}
