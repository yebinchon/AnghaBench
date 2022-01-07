
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* png_textp ;
typedef int png_structp ;
struct TYPE_3__ {int compression; } ;






 int png_error (int ,char*) ;
 int unsupported_chunks ;

__attribute__((used)) static void
pngtest_check_text_support(png_structp png_ptr, png_textp text_ptr,
    int num_text)
{
   while (num_text > 0)
   {
      switch (text_ptr[--num_text].compression)
      {
         case 129:
            break;

         case 128:

               ++unsupported_chunks;

               text_ptr[num_text].compression = 129;

            break;

         case 131:
         case 130:

               ++unsupported_chunks;
               text_ptr[num_text].compression = 129;

            break;

         default:

            png_error(png_ptr, "invalid text chunk compression field");
            break;
      }
   }
}
