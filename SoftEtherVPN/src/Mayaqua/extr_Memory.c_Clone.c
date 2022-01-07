
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Copy (void*,void*,int ) ;
 void* Malloc (int ) ;

void *Clone(void *addr, UINT size)
{
 void *ret;

 if (addr == ((void*)0))
 {
  return ((void*)0);
 }

 ret = Malloc(size);
 Copy(ret, addr, size);

 return ret;
}
