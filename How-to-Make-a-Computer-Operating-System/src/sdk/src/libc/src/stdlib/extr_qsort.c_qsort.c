
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int quicksort (void*,size_t,int ,size_t,int (*) (void const*,void const*)) ;

void qsort(void* base,size_t nmemb,size_t size,int (*compar)(const void*,const void*)) {

  if (nmemb >= (((size_t)-1)>>1) ||
      size >= (((size_t)-1)>>1)) return;







  if (nmemb>1)
    quicksort(base,size,0,nmemb-1,compar);
}
