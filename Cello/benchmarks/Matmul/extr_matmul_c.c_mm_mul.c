
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mm_destroy (int,double**) ;
 double** mm_init (int) ;

double **mm_mul(int n, double *const *a, double *const *b)
{
 int i, j, k;
 double **m, **c;
 m = mm_init(n); c = mm_init(n);
 for (i = 0; i < n; ++i)
  for (j = 0; j < n; ++j)
   c[i][j] = b[j][i];
 for (i = 0; i < n; ++i) {
  double *p = a[i], *q = m[i];
  for (j = 0; j < n; ++j) {
   double t = 0.0, *r = c[j];
   for (k = 0; k < n; ++k)
    t += p[k] * r[k];
   q[j] = t;
  }
 }
 mm_destroy(n, c);
 return m;
}
