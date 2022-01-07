
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * opaque; int message; scalar_t__ warning_or_error; } ;
struct TYPE_4__ {char* file_name; TYPE_2__ image; } ;
typedef TYPE_1__ Image ;


 int fflush (int ) ;
 int fprintf (int ,char*,char const*,...) ;
 int png_image_free (TYPE_2__*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static int
logerror(Image *image, const char *a1, const char *a2, const char *a3)
{
   fflush(stdout);
   if (image->image.warning_or_error)
      fprintf(stderr, "%s%s%s: %s\n", a1, a2, a3, image->image.message);

   else
      fprintf(stderr, "%s%s%s\n", a1, a2, a3);

   if (image->image.opaque != ((void*)0))
   {
      fprintf(stderr, "%s: image opaque pointer non-NULL on error\n",
         image->file_name);
      png_image_free(&image->image);
   }

   return 0;
}
