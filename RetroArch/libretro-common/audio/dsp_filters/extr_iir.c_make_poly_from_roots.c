
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (float*,int ,unsigned int) ;

__attribute__((used)) static void make_poly_from_roots(
      const double *roots, unsigned num_roots, float *poly)
{
   unsigned i, j;

   poly[0] = 1;
   poly[1] = -roots[0];
   memset(poly + 2, 0, (num_roots + 1 - 2) * sizeof(*poly));

   for (i = 1; i < num_roots; i++)
      for (j = num_roots; j > 0; j--)
         poly[j] -= poly[j - 1] * roots[i];
}
