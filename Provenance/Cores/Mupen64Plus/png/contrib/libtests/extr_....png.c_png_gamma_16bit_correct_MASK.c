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
typedef  int /*<<< orphan*/  png_uint_16 ;
typedef  int png_int_32 ;
typedef  double png_fixed_point ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_FP_1 ; 
 double FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (double*,double,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,double) ; 

png_uint_16
FUNC5(unsigned int value, png_fixed_point gamma_val)
{
   if (value > 0 && value < 65535)
   {
# ifdef PNG_FLOATING_ARITHMETIC_SUPPORTED
      /* The same (unsigned int)->(double) constraints apply here as above,
       * however in this case the (unsigned int) to (int) conversion can
       * overflow on an ANSI-C90 compliant system so the cast needs to ensure
       * that this is not possible.
       */
      double r = floor(65535*pow((png_int_32)value/65535.,
          gamma_val*.00001)+.5);
      return (png_uint_16)r;
# else
      png_int_32 lg2 = FUNC2(value);
      png_fixed_point res;

      if (FUNC3(&res, gamma_val, lg2, PNG_FP_1) != 0)
         return FUNC1(res);

      /* Overflow. */
      value = 0;
# endif
   }

   return (png_uint_16)value;
}