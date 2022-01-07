
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_imagep ;
typedef int png_const_charp ;
struct TYPE_4__ {int warning_or_error; int message; } ;


 int PNG_IMAGE_ERROR ;
 int png_image_free (TYPE_1__*) ;
 int png_safecat (int ,int,int ,int ) ;

int
png_image_error(png_imagep image, png_const_charp error_message)
{

   png_safecat(image->message, (sizeof image->message), 0, error_message);
   image->warning_or_error |= PNG_IMAGE_ERROR;
   png_image_free(image);
   return 0;
}
