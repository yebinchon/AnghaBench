
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* message; int format; int version; } ;
typedef TYPE_1__ png_image ;
typedef int * png_bytep ;


 int PNG_FORMAT_RGBA ;
 scalar_t__ PNG_IMAGE_SIZE (TYPE_1__) ;
 int PNG_IMAGE_VERSION ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 int * malloc (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ png_image_begin_read_from_file (TYPE_1__*,char const*) ;
 scalar_t__ png_image_finish_read (TYPE_1__*,int *,int *,int ,int *) ;
 int png_image_free (TYPE_1__*) ;
 scalar_t__ png_image_write_to_file (TYPE_1__*,char const*,int ,int *,int ,int *) ;
 int stderr ;

int main(int argc, const char **argv)
{
   int result = 1;

   if (argc == 3)
   {
      png_image image;


      memset(&image, 0, sizeof image);
      image.version = PNG_IMAGE_VERSION;

      if (png_image_begin_read_from_file(&image, argv[1]))
      {
         png_bytep buffer;




         image.format = PNG_FORMAT_RGBA;

         buffer = malloc(PNG_IMAGE_SIZE(image));

         if (buffer != ((void*)0))
         {
            if (png_image_finish_read(&image, ((void*)0) , buffer,
               0 , ((void*)0) ))
            {
               if (png_image_write_to_file(&image, argv[2],
                  0 , buffer, 0 ,
                  ((void*)0) ))
                  result = 0;

               else
                  fprintf(stderr, "pngtopng: write %s: %s\n", argv[2],
                      image.message);

               free(buffer);
            }

            else
            {
               fprintf(stderr, "pngtopng: read %s: %s\n", argv[1],
                   image.message);





               png_image_free(&image);
            }
         }

         else
            fprintf(stderr, "pngtopng: out of memory: %lu bytes\n",
               (unsigned long)PNG_IMAGE_SIZE(image));
      }

      else

         fprintf(stderr, "pngtopng: %s: %s\n", argv[1], image.message);
   }

   else

      fprintf(stderr, "pngtopng: usage: pngtopng input-file output-file\n");

   return result;
}
