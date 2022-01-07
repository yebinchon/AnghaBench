
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmp (void const*,void const*) ;
 int qsort (char**,int,int,int (*) (void const*,void const*)) ;

sort() {
 int n; char *a[100];
 qsort(a, n, sizeof(char*), (int (*)(const void*, const void*))cmp);
 qsort(a, n, sizeof(char*), cmp);
}
