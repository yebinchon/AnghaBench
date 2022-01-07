
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ warning_or_error; int message; int * opaque; } ;
struct TYPE_5__ {int opts; int file_name; TYPE_2__ image; } ;
typedef TYPE_1__ Image ;


 int GBG_ERROR ;
 int STRICT ;
 int logerror (TYPE_1__*,int ,char*,char*) ;
 int png_image_free (TYPE_2__*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
checkopaque(Image *image)
{
   if (image->image.opaque != ((void*)0))
   {
      png_image_free(&image->image);
      return logerror(image, image->file_name, ": opaque not NULL", "");
   }




   else if (image->image.warning_or_error != 0 &&
            (strcmp(image->image.message,
               "libpng does not support gamma+background+rgb_to_gray") == 0 ?
                  (image->opts & GBG_ERROR) != 0 : (image->opts & STRICT) != 0))
      return logerror(image, image->file_name, (image->opts & GBG_ERROR) != 0 ?
                      " --fault-gbg-warning" : " --strict", "");

   else
      return 1;
}
