#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct FuncDef {int dummy; } ;
typedef  float spx_word16_t ;

/* Variables and functions */
 float M_PI ; 
 float FUNC0 (double,struct FuncDef*) ; 
 double FUNC1 (int) ; 
 float FUNC2 (float) ; 

__attribute__((used)) static spx_word16_t FUNC3(float cutoff, float x, int N, struct FuncDef *window_func)
{
   /*fprintf (stderr, "%f ", x);*/
   float xx = x * cutoff;
   if (FUNC1(x)<1e-6)
      return cutoff;
   else if (FUNC1(x) > .5*N)
      return 0;
   /*FIXME: Can it really be any slower than this? */
   return cutoff*FUNC2(M_PI*xx)/(M_PI*xx) * FUNC0(FUNC1(2.*x/N), window_func);
}