
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int memcmp (void*,void*,size_t) ;

int Cmp(void *p1, void *p2, UINT size)
{

 if (p1 == ((void*)0) || p2 == ((void*)0) || size == 0)
 {
  return 0;
 }

 return memcmp(p1, p2, (size_t)size);
}
