
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 void* SlMalloc (int ) ;
 int SlZero (void*,int ) ;

void *SlZeroMalloc(UINT size)
{
 void *p = SlMalloc(size);
 if (p == ((void*)0))
 {

  return ((void*)0);
 }


 SlZero(p, size);

 return p;
}
