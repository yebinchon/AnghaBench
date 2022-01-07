
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int HASH_LIST ;


 int * HashListKeyToPointer (int *,scalar_t__) ;

bool IsInHashListKey(HASH_LIST *h, UINT key)
{

 if (h == ((void*)0) || key == 0)
 {
  return 0;
 }

 if (HashListKeyToPointer(h, key) == ((void*)0))
 {
  return 0;
 }

 return 1;
}
