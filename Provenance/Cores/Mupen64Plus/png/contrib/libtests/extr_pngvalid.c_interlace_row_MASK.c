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
FUNC3(png_bytep buffer, png_const_bytep imageRow,
   unsigned int pixel_size, png_uint_32 w, int pass, int littleendian)
{
   png_uint_32 xin, xout, xstep;

   /* Note that this can, trivially, be optimized to a memcpy on pass 7, the
    * code is presented this way to make it easier to understand.  In practice
    * consult the code in the libpng source to see other ways of doing this.
    *
    * It is OK for buffer and imageRow to be identical, because 'xin' moves
    * faster than 'xout' and we copy up.
    */
   xin = FUNC1(pass);
   xstep = 1U<<FUNC0(pass);

   for (xout=0; xin<w; xin+=xstep)
   {
      FUNC2(buffer, xout, imageRow, xin, pixel_size, littleendian);
      ++xout;
   }
}