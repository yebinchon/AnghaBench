
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double* calloc (int,int) ;
 scalar_t__ malloc (int) ;

double **mm_init(int n)
{
 double **m;
 int i;
 m = (double**)malloc(n * sizeof(void*));
 for (i = 0; i < n; ++i)
  m[i] = calloc(n, sizeof(double));
 return m;
}
