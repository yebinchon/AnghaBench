
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsRouteChanged (void*) ;
 void* NewRouteChange () ;

void *InitWaitUntilHostIPAddressChanged()
{
 void *p = NewRouteChange();

 if (p != ((void*)0))
 {
  IsRouteChanged(p);
 }

 return p;
}
