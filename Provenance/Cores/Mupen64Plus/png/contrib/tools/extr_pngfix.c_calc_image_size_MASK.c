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
typedef  int /*<<< orphan*/  udigit ;
struct file {int bit_depth; int color_type; int width; int height; scalar_t__ compression_method; scalar_t__ filter_method; int interlace_method; int image_digits; int /*<<< orphan*/  image_bytes; } ;
typedef  int png_uint_32 ;
typedef  int png_uint_16 ;

/* Variables and functions */
#define  PNG_INTERLACE_ADAM7 129 
#define  PNG_INTERLACE_NONE 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC9(struct file *file)
   /* Fill in the image_bytes field given the IHDR information, calls stop on
    * error.
    */
{
   png_uint_16 pd = file->bit_depth;

   switch (file->color_type)
   {
      default:
         FUNC3(file, "IHDR: colour type");

      invalid_bit_depth:
         FUNC3(file, "IHDR: bit depth");

      case 0: /* g */
         if (pd != 1 && pd != 2 && pd != 4 && pd != 8 && pd != 16)
            goto invalid_bit_depth;
         break;

      case 3:
         if (pd != 1 && pd != 2 && pd != 4 && pd != 8)
            goto invalid_bit_depth;
         break;

      case 2: /* rgb */
         if (pd != 8 && pd != 16)
            goto invalid_bit_depth;

         pd = (png_uint_16)(pd * 3);
         break;

      case 4: /* ga */
         if (pd != 8 && pd != 16)
            goto invalid_bit_depth;

         pd = (png_uint_16)(pd * 2);
         break;

      case 6: /* rgba */
         if (pd != 8 && pd != 16)
            goto invalid_bit_depth;

         pd = (png_uint_16)(pd * 4);
         break;
   }

   if (file->width < 1 || file->width > 0x7fffffff)
      FUNC3(file, "IHDR: width");

   else if (file->height < 1 || file->height > 0x7fffffff)
      FUNC3(file, "IHDR: height");

   else if (file->compression_method != 0)
      FUNC3(file, "IHDR: compression method");

   else if (file->filter_method != 0)
      FUNC3(file, "IHDR: filter method");

   else switch (file->interlace_method)
   {
      case PNG_INTERLACE_ADAM7:
         /* Interlacing makes the image larger because of the replication of
          * both the filter byte and the padding to a byte boundary.
          */
         {
            int pass;
            int image_digits = 0;
            udigit row_width[2], row_bytes[3];

            for (pass=0; pass<=6; ++pass)
            {
               png_uint_32 pw = FUNC0(file->width, pass);

               if (pw > 0)
               {
                  int  digits;

                  /* calculate 1+((pw*pd+7)>>3) in row_bytes */
                  digits = FUNC6(row_bytes, FUNC7(row_bytes, 7),
                     row_width, FUNC7(row_width, pw), pd);
                  digits = FUNC8(row_bytes, digits, 3);
                  digits = FUNC4(row_bytes, digits, 1);

                  /* Add row_bytes * pass-height to the file image_bytes field
                   */
                  image_digits = FUNC5(file->image_bytes, image_digits,
                     row_bytes, digits,
                     FUNC1(file->height, pass));
               }
            }

            file->image_digits = image_digits;
         }
         break;

      case PNG_INTERLACE_NONE:
         {
            int  digits;
            udigit row_width[2], row_bytes[3];

            /* As above, but use image_width in place of the pass width: */
            digits = FUNC6(row_bytes, FUNC7(row_bytes, 7),
               row_width, FUNC7(row_width, file->width), pd);
            digits = FUNC8(row_bytes, digits, 3);
            digits = FUNC4(row_bytes, digits, 1);

            /* Set row_bytes * image-height to the file image_bytes field */
            file->image_digits = FUNC5(file->image_bytes, 0,
               row_bytes, digits, file->height);
         }
         break;

      default:
         FUNC3(file, "IHDR: interlace method");
   }

   FUNC2(file->image_digits >= 1 && file->image_digits <= 5);
   return 1;
}