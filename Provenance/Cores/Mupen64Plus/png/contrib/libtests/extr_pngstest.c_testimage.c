
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int * png_colorp ;
typedef int png_color ;
typedef int format_list ;
struct TYPE_13__ {int format; } ;
struct TYPE_14__ {int opts; TYPE_1__ image; scalar_t__* tmpfile_name; scalar_t__ input_memory_size; int * input_memory; int * input_file; scalar_t__ allocsize; scalar_t__ bufsize; int * buffer; } ;
typedef TYPE_2__ Image ;


 int FORMAT_COUNT ;
 int PNG_FORMAT_FLAG_ALPHA ;
 int PNG_FORMAT_FLAG_COLORMAP ;
 int PNG_FORMAT_FLAG_LINEAR ;
 int checkopaque (TYPE_2__*) ;
 int compare_two_images (TYPE_2__*,TYPE_2__*,int,int *) ;
 scalar_t__ format_isset (int *,int) ;
 int freeimage (TYPE_2__*) ;
 int newimage (TYPE_2__*) ;
 int random_color (int *) ;
 int read_file (TYPE_2__*,int,int *) ;
 int resetimage (TYPE_2__*) ;
 int write_one_file (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static int
testimage(Image *image, png_uint_32 opts, format_list *pf)
{
   int result;
   Image copy;


   checkopaque(image);
   copy = *image;

   copy.opts = opts;
   copy.buffer = ((void*)0);
   copy.bufsize = 0;
   copy.allocsize = 0;

   image->input_file = ((void*)0);
   image->input_memory = ((void*)0);
   image->input_memory_size = 0;
   image->tmpfile_name[0] = 0;

   {
      png_uint_32 counter;
      Image output;

      newimage(&output);

      result = 1;





      for (counter=0; counter<2*FORMAT_COUNT; ++counter)
         if (format_isset(pf, counter >> 1))
      {
         png_uint_32 format = counter >> 1;

         png_color background_color;
         png_colorp background = ((void*)0);







         if ((counter & 1) == 0)
         {
            if ((format & PNG_FORMAT_FLAG_ALPHA) == 0 &&
               (image->image.format & PNG_FORMAT_FLAG_ALPHA) != 0)
            {



               random_color(&background_color);
               background = &background_color;





               if ((format & PNG_FORMAT_FLAG_COLORMAP) != 0 &&
                  (format & PNG_FORMAT_FLAG_LINEAR) == 0)
                  ++counter;
            }




            else
               ++counter;
         }


         resetimage(&copy);
         copy.opts = opts;

         result = read_file(&copy, format, background);
         if (!result)
            break;


         result = compare_two_images(image, &copy, 0 , background);
         if (!result)
            break;
      }

      freeimage(&output);
   }

   freeimage(&copy);

   return result;
}
