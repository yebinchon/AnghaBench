
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int SlCopy (void*,void*,int ) ;
 void* SlMalloc (int ) ;

void *SlClone(void *p, UINT size)
{
 void *ret;

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 ret = SlMalloc(size);
 SlCopy(ret, p, size);

 return ret;
}
