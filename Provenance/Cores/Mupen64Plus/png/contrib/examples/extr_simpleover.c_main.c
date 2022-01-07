
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char* message; int format; int * opaque; int version; } ;
typedef TYPE_1__ png_image ;
struct TYPE_12__ {int member_1; int member_2; int member_0; } ;
typedef TYPE_2__ png_color ;
typedef int * png_bytep ;


 int PNG_FORMAT_RGB ;
 scalar_t__ PNG_IMAGE_SIZE (TYPE_1__) ;
 int PNG_IMAGE_VERSION ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 int * malloc (scalar_t__) ;
 scalar_t__ png_image_begin_read_from_file (TYPE_1__*,char const*) ;
 scalar_t__ png_image_finish_read (TYPE_1__*,TYPE_2__*,int *,int ,int *) ;
 int png_image_free (TYPE_1__*) ;
 scalar_t__ png_image_write_to_file (TYPE_1__*,char const*,int ,int *,int ,int *) ;
 scalar_t__ png_image_write_to_stdio (TYPE_1__*,int ,int ,int *,int ,int *) ;
 scalar_t__ simpleover_process (TYPE_1__*,int *,int,char const**) ;
 int stderr ;
 int stdout ;

int main(int argc, const char **argv)
{
   int result = 1;

   if (argc >= 2)
   {
      int argi = 2;
      const char *output = ((void*)0);
      png_image image;

      if (argc > 2 && argv[2][0] != '-' )
      {
         output = argv[2];
         argi = 3;
      }

      image.version = PNG_IMAGE_VERSION;
      image.opaque = ((void*)0);

      if (png_image_begin_read_from_file(&image, argv[1]))
      {
         png_bytep buffer;

         image.format = PNG_FORMAT_RGB;

         buffer = malloc(PNG_IMAGE_SIZE(image));

         if (buffer != ((void*)0))
         {
            png_color background = {0, 0xff, 0};

            if (png_image_finish_read(&image, &background, buffer,
               0 , ((void*)0) ))
            {






               if (simpleover_process(&image, buffer, argc-argi, argv+argi))
               {

                  if ((output != ((void*)0) &&
                       png_image_write_to_file(&image, output,
                        0 , buffer, 0 ,
                        ((void*)0) )) ||
                      (output == ((void*)0) &&
                       png_image_write_to_stdio(&image, stdout,
                        0 , buffer, 0 ,
                        ((void*)0) )))
                     result = 0;

                  else
                     fprintf(stderr, "simpleover: write %s: %s\n",
                        output == ((void*)0) ? "stdout" : output, image.message);
               }


            }

            else
               fprintf(stderr, "simpleover: read %s: %s\n", argv[1],
                   image.message);

            free(buffer);
         }

         else
         {
            fprintf(stderr, "simpleover: out of memory: %lu bytes\n",
               (unsigned long)PNG_IMAGE_SIZE(image));





            png_image_free(&image);
         }
      }

      else
      {

         fprintf(stderr, "simpleover: %s: %s\n", argv[1], image.message);
      }
   }

   else
   {

      fprintf(stderr,
         "simpleover: usage: simpleover background.png [output.png]\n"
         "  Output 'background.png' as a 24-bit RGB PNG file in 'output.png'\n"
         "   or, if not given, stdout.  'background.png' will be composited\n"
         "   on fully saturated green.\n"
         "\n"
         "  Optionally, before output, process additional PNG files:\n"
         "\n"
         "   --sprite=width,height,name {[--at=x,y] {sprite.png}}\n"
         "    Produce a transparent sprite of size (width,height) and with\n"
         "     name 'name'.\n"
         "    For each sprite.png composite it using a Porter-Duff 'Over'\n"
         "     operation at offset (x,y) in the sprite (defaulting to (0,0)).\n"
         "     Input PNGs will be truncated to the area of the sprite.\n"
         "\n"
         "   --add='name' {x,y}\n"
         "    Optionally, before output, composite a sprite, 'name', which\n"
         "     must have been previously produced using --sprite, at each\n"
         "     offset (x,y) in the output image.  Each sprite must fit\n"
         "     completely within the output image.\n"
         "\n"
         "  PNG files are processed in the order they occur on the command\n"
         "  line and thus the first PNG processed appears as the bottommost\n"
         "  in the output image.\n");
   }

   return result;
}
