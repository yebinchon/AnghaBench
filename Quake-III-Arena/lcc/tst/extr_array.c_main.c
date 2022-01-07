
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f () ;
 int g (int**,int**) ;
 int** x ;
 int** y ;

main() {
 int z[3][4];
 int i, j, *p;

 for (i = 0; i < 3; i++) {
  for (j = 0; j < 4; j++)
   x[i][j] = 1000*i + j;
  y[i] = x[i];
 }
 f();
 for (i = 0; i < 3; i++) {
  y[i] = p = &z[i][0];
  for (j = 0; j < 4; j++)
   p[j] = x[i][j];
 }
 g(z, y);
 return 0;
}
