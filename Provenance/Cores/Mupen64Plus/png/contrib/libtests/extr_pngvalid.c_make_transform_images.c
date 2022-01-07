
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int test; } ;
struct TYPE_4__ {TYPE_3__ this; } ;
typedef TYPE_1__ png_modifier ;
typedef int png_byte ;


 int FILE_NAME_SIZE ;
 int INTERLACE_LAST ;
 int PNG_INTERLACE_NONE ;
 int do_own_interlace ;
 int make_transform_image (TYPE_3__*,int ,int ,unsigned int,int,char*) ;
 scalar_t__ next_format (int *,int *,unsigned int*,int,int) ;
 int safecat (int ,int,int ,char*) ;
 int standard_name (char*,int,int ,int ,int ,unsigned int,int,int ,int ,int ) ;

__attribute__((used)) static void
make_transform_images(png_modifier *pm)
{
   png_byte colour_type = 0;
   png_byte bit_depth = 0;
   unsigned int palette_number = 0;


   safecat(pm->this.test, sizeof pm->this.test, 0, "make standard images");





   while (next_format(&colour_type, &bit_depth, &palette_number, 1, 1))
   {
      int interlace_type;

      for (interlace_type = PNG_INTERLACE_NONE;
           interlace_type < INTERLACE_LAST; ++interlace_type)
      {
         char name[FILE_NAME_SIZE];

         standard_name(name, sizeof name, 0, colour_type, bit_depth,
            palette_number, interlace_type, 0, 0, do_own_interlace);
         make_transform_image(&pm->this, colour_type, bit_depth, palette_number,
            interlace_type, name);
      }
   }
}
