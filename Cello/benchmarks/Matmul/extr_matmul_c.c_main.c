
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mm_destroy (int,double**) ;
 double** mm_gen (int) ;
 double** mm_mul (int,double**,double**) ;

int main(int argc, char *argv[])
{
 int n = 300;
 double **a, **b, **m;
 n = (n/2) * 2;
 a = mm_gen(n); b = mm_gen(n);
 m = mm_mul(n, a, b);

 mm_destroy(n, a); mm_destroy(n, b); mm_destroy(n, m);
 return 0;
}
