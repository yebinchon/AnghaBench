
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int HASH_LIST ;


 int Free (void**) ;
 void** HashListToArray (int *,scalar_t__*) ;
 scalar_t__ POINTER_TO_KEY (void*) ;

void *HashListKeyToPointer(HASH_LIST *h, UINT key)
{
 UINT num, i;
 void **pp;
 void *ret = ((void*)0);

 if (h == ((void*)0) || key == 0)
 {
  return ((void*)0);
 }

 pp = HashListToArray(h, &num);
 if (pp == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < num;i++)
 {
  void *p = pp[i];

  if (POINTER_TO_KEY(p) == key)
  {
   ret = p;
  }
 }

 Free(pp);

 return ret;
}
