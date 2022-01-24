#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_size_t ;
typedef  TYPE_1__* png_row_infop ;
typedef  scalar_t__* png_bytep ;
typedef  scalar_t__ png_byte ;
struct TYPE_3__ {scalar_t__ color_type; scalar_t__ rowbytes; int bit_depth; } ;

/* Variables and functions */
 scalar_t__ PNG_COLOR_TYPE_GRAY ; 
 scalar_t__ PNG_COLOR_TYPE_GRAY_ALPHA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

void /* PRIVATE */
FUNC1(png_row_infop row_info, png_bytep row)
{
   FUNC0(1, "in png_do_invert");

  /* This test removed from libpng version 1.0.13 and 1.2.0:
   *   if (row_info->bit_depth == 1 &&
   */
   if (row_info->color_type == PNG_COLOR_TYPE_GRAY)
   {
      png_bytep rp = row;
      png_size_t i;
      png_size_t istop = row_info->rowbytes;

      for (i = 0; i < istop; i++)
      {
         *rp = (png_byte)(~(*rp));
         rp++;
      }
   }

   else if (row_info->color_type == PNG_COLOR_TYPE_GRAY_ALPHA &&
      row_info->bit_depth == 8)
   {
      png_bytep rp = row;
      png_size_t i;
      png_size_t istop = row_info->rowbytes;

      for (i = 0; i < istop; i += 2)
      {
         *rp = (png_byte)(~(*rp));
         rp += 2;
      }
   }

#ifdef PNG_16BIT_SUPPORTED
   else if (row_info->color_type == PNG_COLOR_TYPE_GRAY_ALPHA &&
      row_info->bit_depth == 16)
   {
      png_bytep rp = row;
      png_size_t i;
      png_size_t istop = row_info->rowbytes;

      for (i = 0; i < istop; i += 4)
      {
         *rp = (png_byte)(~(*rp));
         *(rp + 1) = (png_byte)(~(*(rp + 1)));
         rp += 4;
      }
   }
#endif
}