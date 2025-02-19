
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t png_uint_32 ;
typedef int png_int_32 ;
typedef TYPE_1__* png_const_colorp ;
struct TYPE_18__ {size_t format; scalar_t__ height; scalar_t__ width; int flags; int version; } ;
struct TYPE_17__ {char* file_name; int opts; int colormap; scalar_t__ stride; scalar_t__ buffer; TYPE_5__ image; scalar_t__ stride_extra; int * input_file; int input_memory_size; int * input_memory; } ;
struct TYPE_16__ {int red; int green; int blue; } ;
typedef TYPE_2__ Image ;


 size_t BASE_FORMATS ;
 size_t FORMAT_MASK ;
 size_t FORMAT_NO_CHANGE ;
 size_t PNG_FORMAT_FLAG_COLORMAP ;
 int PNG_IMAGE_FLAG_16BIT_sRGB ;
 scalar_t__ PNG_IMAGE_ROW_STRIDE (TYPE_5__) ;
 int PNG_IMAGE_VERSION ;
 int VERBOSE ;
 int allocbuffer (TYPE_2__*) ;
 int checkbuffer (TYPE_2__*,char*) ;
 int checkopaque (TYPE_2__*) ;
 int fflush (int ) ;
 char** format_names ;
 int logerror (TYPE_2__*,char*,char*,char*) ;
 int memset (TYPE_5__*,int ,int) ;
 int png_image_begin_read_from_file (TYPE_5__*,char*) ;
 int png_image_begin_read_from_memory (TYPE_5__*,int *,int ) ;
 int png_image_begin_read_from_stdio (TYPE_5__*,int *) ;
 int png_image_finish_read (TYPE_5__*,TYPE_1__*,scalar_t__,int ,int ) ;
 int printf (char*,...) ;
 int sRGB_16BIT ;
 int stdout ;

__attribute__((used)) static int
read_file(Image *image, png_uint_32 format, png_const_colorp background)
{
   memset(&image->image, 0, sizeof image->image);
   image->image.version = PNG_IMAGE_VERSION;

   if (image->input_memory != ((void*)0))
   {
      if (!png_image_begin_read_from_memory(&image->image, image->input_memory,
         image->input_memory_size))
         return logerror(image, "memory init: ", image->file_name, "");
   }
      else
      {
         return logerror(image, "unsupported file/stdio init: ",
            image->file_name, "");
      }



   if (image->opts & sRGB_16BIT)
      image->image.flags |= PNG_IMAGE_FLAG_16BIT_sRGB;




   {
      int result;
      png_uint_32 image_format;


      image_format = image->image.format;

      if (image->opts & VERBOSE)
      {
         printf("%s %lu x %lu %s -> %s", image->file_name,
            (unsigned long)image->image.width,
            (unsigned long)image->image.height,
            format_names[image_format & FORMAT_MASK],
            (format & FORMAT_NO_CHANGE) != 0 || image->image.format == format
            ? "no change" : format_names[format & FORMAT_MASK]);

         if (background != ((void*)0))
            printf(" background(%d,%d,%d)\n", background->red,
               background->green, background->blue);
         else
            printf("\n");

         fflush(stdout);
      }





      if ((format & FORMAT_NO_CHANGE) != 0)
      {
         if ((format & PNG_FORMAT_FLAG_COLORMAP) != 0 &&
            (image_format & PNG_FORMAT_FLAG_COLORMAP) != 0)
            format = (image_format & ~BASE_FORMATS) | (format & BASE_FORMATS);

         else
            format = image_format;
      }

      image->image.format = format;

      image->stride = PNG_IMAGE_ROW_STRIDE(image->image) + image->stride_extra;
      allocbuffer(image);

      result = png_image_finish_read(&image->image, background,
         image->buffer+16, (png_int_32)image->stride, image->colormap);

      checkbuffer(image, image->file_name);

      if (result)
         return checkopaque(image);

      else
         return logerror(image, image->file_name, ": image read failed", "");
   }
}
