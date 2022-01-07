
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct sprite {char const* name; int * buffer; int * file; int height; int width; } ;
typedef int * png_uint_16p ;
struct TYPE_9__ {char* message; scalar_t__ colormap_entries; int flags; void* format; int height; int width; int * opaque; void* version; } ;
typedef TYPE_1__ png_image ;


 void* PNG_FORMAT_LINEAR_RGB_ALPHA ;
 int PNG_IMAGE_FLAG_FAST ;
 scalar_t__ PNG_IMAGE_SIZE (TYPE_1__) ;
 void* PNG_IMAGE_VERSION ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 int * malloc (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ png_image_begin_read_from_file (TYPE_1__*,char const*) ;
 scalar_t__ png_image_finish_read (TYPE_1__*,int *,int *,int ,int *) ;
 int png_image_free (TYPE_1__*) ;
 scalar_t__ png_image_write_to_stdio (TYPE_1__*,int *,int,int *,int ,int *) ;
 int sprite_op (struct sprite*,int,int,TYPE_1__*,int *) ;
 int sscanf (char const*,char*,int*,int*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 int * tmpfile () ;

__attribute__((used)) static int
create_sprite(struct sprite *sprite, int *argc, const char ***argv)
{





   while (*argc > 0)
   {
      char tombstone;
      int x = 0, y = 0;

      if ((*argv)[0][0] == '-' && (*argv)[0][1] == '-')
      {

         if (sscanf((*argv)[0], "--at=%d,%d%c", &x, &y, &tombstone) != 2)
            break;

         ++*argv, --*argc;
      }

      else
      {

         png_image image;

         image.version = PNG_IMAGE_VERSION;
         image.opaque = ((void*)0);

         if (png_image_begin_read_from_file(&image, (*argv)[0]))
         {
            png_uint_16p buffer;

            image.format = PNG_FORMAT_LINEAR_RGB_ALPHA;

            buffer = malloc(PNG_IMAGE_SIZE(image));

            if (buffer != ((void*)0))
            {
               if (png_image_finish_read(&image, ((void*)0) , buffer,
                  0 ,
                  ((void*)0) ))
               {






                  sprite_op(sprite, x, y, &image, buffer);
                  free(buffer);
                  ++*argv, --*argc;

                  continue;
               }

               else
               {
                  free(buffer);
                  fprintf(stderr, "simpleover: read %s: %s\n", (*argv)[0],
                      image.message);
               }
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

            fprintf(stderr, "simpleover: %s: %s\n", (*argv)[0], image.message);
         }

         return 0;
      }
   }




   sprite->file = tmpfile();

   if (sprite->file != ((void*)0))
   {
      png_image save;

      memset(&save, 0, sizeof save);
      save.version = PNG_IMAGE_VERSION;
      save.opaque = ((void*)0);
      save.width = sprite->width;
      save.height = sprite->height;
      save.format = PNG_FORMAT_LINEAR_RGB_ALPHA;
      save.flags = PNG_IMAGE_FLAG_FAST;
      save.colormap_entries = 0;

      if (png_image_write_to_stdio(&save, sprite->file, 1 ,
          sprite->buffer, 0 , ((void*)0) ))
      {

         free(sprite->buffer);
         sprite->buffer = ((void*)0);
         return 1;
      }

      else
         fprintf(stderr, "simpleover: write sprite %s: %s\n", sprite->name,
            save.message);
   }

   else
      fprintf(stderr, "simpleover: sprite %s: could not allocate tmpfile: %s\n",
         sprite->name, strerror(errno));

   return 0;
}
