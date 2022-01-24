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
typedef  scalar_t__ png_uint_32 ;
typedef  int /*<<< orphan*/  png_const_bytep ;
typedef  int /*<<< orphan*/  png_bytep ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,unsigned int,int) ; 

__attribute__((used)) static void
FUNC3(png_bytep buffer, png_const_bytep row,
   unsigned int pixel_size, png_uint_32 w, int pass, int littleendian)
{
   /* The inverse of the above, 'row' is part of row 'y' of the output image,
    * in 'buffer'.  The image is 'w' wide and this is pass 'pass', distribute
    * the pixels of row into buffer and return the number written (to allow
    * this to be checked).
    */
   png_uint_32 xin, xout, xstep;

   xout = FUNC1(pass);
   xstep = 1U<<FUNC0(pass);

   for (xin=0; xout<w; xout+=xstep)
   {
      FUNC2(buffer, xout, row, xin, pixel_size, littleendian);
      ++xin;
   }
}