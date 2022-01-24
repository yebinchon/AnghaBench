#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* png_structrp ;
typedef  int /*<<< orphan*/  png_size_t ;
typedef  TYPE_2__* png_const_color_16p ;
typedef  int* png_const_bytep ;
typedef  int png_byte ;
struct TYPE_8__ {int gray; int red; int green; int blue; } ;
struct TYPE_7__ {int bit_depth; scalar_t__ num_palette; } ;

/* Variables and functions */
 int PNG_COLOR_TYPE_GRAY ; 
 int PNG_COLOR_TYPE_PALETTE ; 
 int PNG_COLOR_TYPE_RGB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  png_tRNS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

void /* PRIVATE */
FUNC4(png_structrp png_ptr, png_const_bytep trans_alpha,
    png_const_color_16p tran, int num_trans, int color_type)
{
   png_byte buf[6];

   FUNC1(1, "in png_write_tRNS");

   if (color_type == PNG_COLOR_TYPE_PALETTE)
   {
      if (num_trans <= 0 || num_trans > (int)png_ptr->num_palette)
      {
         FUNC0(png_ptr,
             "Invalid number of transparent colors specified");
         return;
      }

      /* Write the chunk out as it is */
      FUNC3(png_ptr, png_tRNS, trans_alpha,
          (png_size_t)num_trans);
   }

   else if (color_type == PNG_COLOR_TYPE_GRAY)
   {
      /* One 16-bit value */
      if (tran->gray >= (1 << png_ptr->bit_depth))
      {
         FUNC0(png_ptr,
             "Ignoring attempt to write tRNS chunk out-of-range for bit_depth");

         return;
      }

      FUNC2(buf, tran->gray);
      FUNC3(png_ptr, png_tRNS, buf, (png_size_t)2);
   }

   else if (color_type == PNG_COLOR_TYPE_RGB)
   {
      /* Three 16-bit values */
      FUNC2(buf, tran->red);
      FUNC2(buf + 2, tran->green);
      FUNC2(buf + 4, tran->blue);
#ifdef PNG_WRITE_16BIT_SUPPORTED
      if (png_ptr->bit_depth == 8 && (buf[0] | buf[2] | buf[4]) != 0)
#else
      if ((buf[0] | buf[2] | buf[4]) != 0)
#endif
      {
         FUNC0(png_ptr,
             "Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8");
         return;
      }

      FUNC3(png_ptr, png_tRNS, buf, (png_size_t)6);
   }

   else
   {
      FUNC0(png_ptr, "Can't write tRNS with an alpha channel");
   }
}