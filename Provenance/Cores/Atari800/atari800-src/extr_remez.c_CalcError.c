
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double ComputeA (double const,int,double const*,double const*,double const*) ;

__attribute__((used)) static void CalcError(int r, const double ad[],
                      const double x[], const double y[],
                      int gridsize, const double Grid[],
                      const double D[], const double W[], double E[])
{
 int i;
 double A;

 for (i = 0; i < gridsize; i++) {
  A = ComputeA(Grid[i], r, ad, x, y);
  E[i] = W[i] * (D[i] - A);
 }
}
