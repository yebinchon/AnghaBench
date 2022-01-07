
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 void* NeoMalloc (int ) ;
 int NeoZero (void*,int ) ;

void *NeoZeroMalloc(UINT size)
{
 void *p = NeoMalloc(size);
 if (p == ((void*)0))
 {

  return ((void*)0);
 }

 NeoZero(p, size);
 return p;
}
