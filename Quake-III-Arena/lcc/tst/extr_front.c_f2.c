
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f (int *,int *) ;
 int x ;
 int y ;

f2(int **a, int **b) {
 f(&x, &y);
 **a = 0;
 return **b;
}
