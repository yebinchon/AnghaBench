
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FuncDef {int dummy; } ;
typedef float spx_word16_t ;


 float M_PI ;
 float compute_func (double,struct FuncDef*) ;
 double fabs (int) ;
 float sin (float) ;

__attribute__((used)) static spx_word16_t sinc(float cutoff, float x, int N, struct FuncDef *window_func)
{

   float xx = x * cutoff;
   if (fabs(x)<1e-6)
      return cutoff;
   else if (fabs(x) > .5*N)
      return 0;

   return cutoff*sin(M_PI*xx)/(M_PI*xx) * compute_func(fabs(2.*x/N), window_func);
}
