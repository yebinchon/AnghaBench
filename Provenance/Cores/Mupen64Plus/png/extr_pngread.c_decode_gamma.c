
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int png_uint_32 ;
struct TYPE_8__ {int file_encoding; TYPE_1__* image; int gamma_to_linear; } ;
typedef TYPE_3__ png_image_read_control ;
struct TYPE_7__ {int png_ptr; } ;
struct TYPE_6__ {TYPE_2__* opaque; } ;





 int P_NOTSET ;

 int png_error (int ,char*) ;
 int png_gamma_16bit_correct (int,int ) ;
 int* png_sRGB_table ;
 int set_file_encoding (TYPE_3__*) ;

__attribute__((used)) static unsigned int
decode_gamma(png_image_read_control *display, png_uint_32 value, int encoding)
{
   if (encoding == 131)
      encoding = display->file_encoding;

   if (encoding == P_NOTSET)
   {
      set_file_encoding(display);
      encoding = display->file_encoding;
   }

   switch (encoding)
   {
      case 131:
         value = png_gamma_16bit_correct(value*257, display->gamma_to_linear);
         break;

      case 128:
         value = png_sRGB_table[value];
         break;

      case 130:
         break;

      case 129:
         value *= 257;
         break;


      default:
         png_error(display->image->opaque->png_ptr,
             "unexpected encoding (internal error)");

   }

   return value;
}
