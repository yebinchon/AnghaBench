
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error_color_16; int error_gray_16; int error_indexed; int error_color_8; int error_gray_8; int error_gray_4; int error_gray_2; } ;
typedef TYPE_1__ png_modifier ;
typedef char* png_const_charp ;


 int fflush (int ) ;
 int print_one (char*,int ) ;
 int printf (char*,...) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
summarize_gamma_errors(png_modifier *pm, png_const_charp who, int low_bit_depth,
   int indexed)
{
   fflush(stderr);

   if (who)
      printf("\nGamma correction with %s:\n", who);

   else
      printf("\nBasic gamma correction:\n");

   if (low_bit_depth)
   {
      print_one(" 2 bit gray: ", pm->error_gray_2);
      print_one(" 4 bit gray: ", pm->error_gray_4);
      print_one(" 8 bit gray: ", pm->error_gray_8);
      print_one(" 8 bit color:", pm->error_color_8);
      if (indexed)
         print_one(" indexed:    ", pm->error_indexed);
   }

   print_one("16 bit gray: ", pm->error_gray_16);
   print_one("16 bit color:", pm->error_color_16);

   fflush(stdout);
}
