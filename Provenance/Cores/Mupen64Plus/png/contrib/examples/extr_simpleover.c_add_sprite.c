
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sprite {int width; int height; char* name; int file; } ;
typedef TYPE_1__* png_imagep ;
struct TYPE_7__ {char const* message; int format; int version; } ;
typedef TYPE_2__ png_image ;
typedef scalar_t__ png_bytep ;
struct TYPE_6__ {unsigned int width; unsigned int height; } ;


 int PNG_FORMAT_RGB ;
 int PNG_IMAGE_VERSION ;
 int fprintf (int ,char*,char*,...) ;
 scalar_t__ png_image_begin_read_from_stdio (TYPE_2__*,int ) ;
 scalar_t__ png_image_finish_read (TYPE_2__*,int *,scalar_t__,int,int *) ;
 int rewind (int ) ;
 int sscanf (char const*,char*,int*,int*,char*) ;
 int stderr ;

__attribute__((used)) static int
add_sprite(png_imagep output, png_bytep out_buf, struct sprite *sprite,
   int *argc, const char ***argv)
{





   while (*argc > 0)
   {
      char tombstone;
      int x, y;

      if ((*argv)[0][0] == '-' && (*argv)[0][1] == '-')
         return 1;

      if (sscanf((*argv)[0], "%d,%d%c", &x, &y, &tombstone) == 2)
      {



         if (x < 0 || y < 0 ||
             (unsigned) x >= output->width ||
             (unsigned) y >= output->height ||
             sprite->width > output->width-x ||
             sprite->height > output->height-y)
         {
            fprintf(stderr, "simpleover: sprite %s @ (%d,%d) outside image\n",
               sprite->name, x, y);

            return 0;
         }

         else
         {



            png_image in;

            in.version = PNG_IMAGE_VERSION;
            rewind(sprite->file);

            if (png_image_begin_read_from_stdio(&in, sprite->file))
            {
               in.format = PNG_FORMAT_RGB;

               if (png_image_finish_read(&in, ((void*)0) ,
                  out_buf + (y*output->width + x)*3 ,
                  output->width*3 ,
                  ((void*)0) ))
               {
                  ++*argv, --*argc;
                  continue;
               }
            }


            fprintf(stderr, "simpleover: add sprite %s: %s\n", sprite->name,
                in.message);
            return 0;
         }
      }

      else
      {
         fprintf(stderr, "simpleover: --add='%s': invalid position %s\n",
               sprite->name, (*argv)[0]);
         return 0;
      }
   }

   return 1;
}
