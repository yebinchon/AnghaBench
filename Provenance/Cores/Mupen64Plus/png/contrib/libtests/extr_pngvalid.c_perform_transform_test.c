
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
struct TYPE_5__ {int interlace_type; scalar_t__ repeat; int test_tRNS; int test_lbg; } ;
typedef TYPE_1__ png_modifier ;
typedef int png_byte ;
typedef int image_transform ;


 int FILEID (int ,int ,unsigned int,int ,int ,int ,int ) ;
 scalar_t__ fail (TYPE_1__*) ;
 scalar_t__ image_transform_add (int const**,int,scalar_t__,char*,int,size_t*,int ,int ) ;
 scalar_t__ next_format (int *,int *,unsigned int*,int ,int ) ;
 size_t safecat (char*,int,int ,char*) ;
 int transform_test (TYPE_1__*,int ,int const*,char*) ;

__attribute__((used)) static void
perform_transform_test(png_modifier *pm)
{
   png_byte colour_type = 0;
   png_byte bit_depth = 0;
   unsigned int palette_number = 0;

   while (next_format(&colour_type, &bit_depth, &palette_number, pm->test_lbg,
            pm->test_tRNS))
   {
      png_uint_32 counter = 0;
      size_t base_pos;
      char name[64];

      base_pos = safecat(name, sizeof name, 0, "transform:");

      for (;;)
      {
         size_t pos = base_pos;
         const image_transform *list = 0;




         counter = image_transform_add(&list, 1 , counter,
            name, sizeof name, &pos, colour_type, bit_depth);

         if (counter == 0)
            break;


         do
         {
            pm->repeat = 0;
            transform_test(pm, FILEID(colour_type, bit_depth, palette_number,
               pm->interlace_type, 0, 0, 0), list, name);

            if (fail(pm))
               return;
         }
         while (pm->repeat);
      }
   }
}
