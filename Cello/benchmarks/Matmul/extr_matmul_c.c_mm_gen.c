
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double** mm_init (int) ;

double **mm_gen(int n)
{
 double **m, tmp = 1. / n / n;
 int i, j;
 m = mm_init(n);
 for (i = 0; i < n; ++i)
  for (j = 0; j < n; ++j)
   m[i][j] = tmp * (i - j) * (i + j);
 return m;
}
