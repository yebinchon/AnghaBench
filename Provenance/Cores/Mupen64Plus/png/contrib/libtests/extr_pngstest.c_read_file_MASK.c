#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  size_t png_uint_32 ;
typedef  int /*<<< orphan*/  png_int_32 ;
typedef  TYPE_1__* png_const_colorp ;
struct TYPE_18__ {size_t format; scalar_t__ height; scalar_t__ width; int /*<<< orphan*/  flags; int /*<<< orphan*/  version; } ;
struct TYPE_17__ {char* file_name; int opts; int /*<<< orphan*/  colormap; scalar_t__ stride; scalar_t__ buffer; TYPE_5__ image; scalar_t__ stride_extra; int /*<<< orphan*/ * input_file; int /*<<< orphan*/  input_memory_size; int /*<<< orphan*/ * input_memory; } ;
struct TYPE_16__ {int red; int green; int blue; } ;
typedef  TYPE_2__ Image ;

/* Variables and functions */
 size_t BASE_FORMATS ; 
 size_t FORMAT_MASK ; 
 size_t FORMAT_NO_CHANGE ; 
 size_t PNG_FORMAT_FLAG_COLORMAP ; 
 int /*<<< orphan*/  PNG_IMAGE_FLAG_16BIT_sRGB ; 
 scalar_t__ FUNC0 (TYPE_5__) ; 
 int /*<<< orphan*/  PNG_IMAGE_VERSION ; 
 int VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char** format_names ; 
 int FUNC5 (TYPE_2__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_5__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int sRGB_16BIT ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC12(Image *image, png_uint_32 format, png_const_colorp background)
{
   FUNC6(&image->image, 0, sizeof image->image);
   image->image.version = PNG_IMAGE_VERSION;

   if (image->input_memory != NULL)
   {
      if (!FUNC8(&image->image, image->input_memory,
         image->input_memory_size))
         return FUNC5(image, "memory init: ", image->file_name, "");
   }

#  ifdef PNG_STDIO_SUPPORTED
      else if (image->input_file != NULL)
      {
         if (!png_image_begin_read_from_stdio(&image->image, image->input_file))
            return logerror(image, "stdio init: ", image->file_name, "");
      }

      else
      {
         if (!png_image_begin_read_from_file(&image->image, image->file_name))
            return logerror(image, "file init: ", image->file_name, "");
      }
#  else
      else
      {
         return FUNC5(image, "unsupported file/stdio init: ",
            image->file_name, "");
      }
#  endif

   /* This must be set after the begin_read call: */
   if (image->opts & sRGB_16BIT)
      image->image.flags |= PNG_IMAGE_FLAG_16BIT_sRGB;

   /* Have an initialized image with all the data we need plus, maybe, an
    * allocated file (myfile) or buffer (mybuffer) that need to be freed.
    */
   {
      int result;
      png_uint_32 image_format;

      /* Print both original and output formats. */
      image_format = image->image.format;

      if (image->opts & VERBOSE)
      {
         FUNC11("%s %lu x %lu %s -> %s", image->file_name,
            (unsigned long)image->image.width,
            (unsigned long)image->image.height,
            format_names[image_format & FORMAT_MASK],
            (format & FORMAT_NO_CHANGE) != 0 || image->image.format == format
            ? "no change" : format_names[format & FORMAT_MASK]);

         if (background != NULL)
            FUNC11(" background(%d,%d,%d)\n", background->red,
               background->green, background->blue);
         else
            FUNC11("\n");

         FUNC4(stdout);
      }

      /* 'NO_CHANGE' combined with the color-map flag forces the base format
       * flags to be set on read to ensure that the original representation is
       * not lost in the pass through a colormap format.
       */
      if ((format & FORMAT_NO_CHANGE) != 0)
      {
         if ((format & PNG_FORMAT_FLAG_COLORMAP) != 0 &&
            (image_format & PNG_FORMAT_FLAG_COLORMAP) != 0)
            format = (image_format & ~BASE_FORMATS) | (format & BASE_FORMATS);

         else
            format = image_format;
      }

      image->image.format = format;

      image->stride = FUNC0(image->image) + image->stride_extra;
      FUNC1(image);

      result = FUNC10(&image->image, background,
         image->buffer+16, (png_int_32)image->stride, image->colormap);

      FUNC2(image, image->file_name);

      if (result)
         return FUNC3(image);

      else
         return FUNC5(image, image->file_name, ": image read failed", "");
   }
}