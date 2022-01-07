
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;


 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ POINTER_TO_KEY (void*) ;

void *ListKeyToPointer(LIST *o, UINT key)
{
 UINT i;

 if (o == ((void*)0) || key == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  void *p = LIST_DATA(o, i);

  if (POINTER_TO_KEY(p) == key)
  {
   return p;
  }
 }

 return ((void*)0);
}
