
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qsort (void*,size_t,size_t,int (*) (void const*,void const*)) ;

void
kx_qsort (void *array, size_t nm, size_t member_size, int (*cmpf)(const void *, const void *)) {
 qsort (array, nm, member_size, cmpf);
}
