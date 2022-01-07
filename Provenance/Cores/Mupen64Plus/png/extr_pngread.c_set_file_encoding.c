
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int file_encoding; int gamma_to_linear; TYPE_4__* image; } ;
typedef TYPE_5__ png_image_read_control ;
typedef int png_fixed_point ;
struct TYPE_10__ {TYPE_3__* opaque; } ;
struct TYPE_9__ {TYPE_2__* png_ptr; } ;
struct TYPE_7__ {int gamma; } ;
struct TYPE_8__ {TYPE_1__ colorspace; } ;


 int P_FILE ;
 int P_LINEAR8 ;
 int P_sRGB ;
 scalar_t__ png_gamma_not_sRGB (int ) ;
 scalar_t__ png_gamma_significant (int ) ;
 int png_reciprocal (int ) ;

__attribute__((used)) static void
set_file_encoding(png_image_read_control *display)
{
   png_fixed_point g = display->image->opaque->png_ptr->colorspace.gamma;
   if (png_gamma_significant(g) != 0)
   {
      if (png_gamma_not_sRGB(g) != 0)
      {
         display->file_encoding = P_FILE;
         display->gamma_to_linear = png_reciprocal(g);
      }

      else
         display->file_encoding = P_sRGB;
   }

   else
      display->file_encoding = P_LINEAR8;
}
