
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;


 void* ListKeyToPointer (int *,scalar_t__) ;

bool IsInListKey(LIST *o, UINT key)
{
 void *p;

 if (o == ((void*)0) || key == 0)
 {
  return 0;
 }

 p = ListKeyToPointer(o, key);
 if (p == ((void*)0))
 {
  return 0;
 }

 return 1;
}
