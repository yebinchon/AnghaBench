
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 int** x ;
 int** y ;

f() {
 int i, j;

 for (i = 0; i < 3; i++)
  for (j = 0; j < 4; j++)
   printf(" %d", x[i][j]);
 printf("\n");
 for (i = 0; i < 3; i++)
  for (j = 0; j < 4; j++)
   printf(" %d", y[i][j]);
 printf("\n");
}
