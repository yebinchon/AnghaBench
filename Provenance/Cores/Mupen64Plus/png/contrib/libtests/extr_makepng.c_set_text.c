
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_textp ;
typedef int png_structp ;
typedef int png_size_t ;
typedef int png_infop ;
typedef int* png_charp ;
typedef int * png_bytep ;
struct TYPE_4__ {int* text; int text_length; } ;


 int free (int*) ;
 int load_fake (int*,int **) ;
 int load_file (int*,int **) ;
 int png_set_text (int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static void
set_text(png_structp png_ptr, png_infop info_ptr, png_textp text,
   png_charp param)
{
   switch (param[0])
   {
      case '<':
         {
            png_bytep file = ((void*)0);

            text->text_length = load_file(param+1, &file);
            text->text = (png_charp)file;
         }
         break;

      case '0': case '1': case '2': case '3': case '4':
      case '5': case '6': case '7': case '8': case '9':
         {
            png_bytep data = ((void*)0);
            png_size_t fake_len = load_fake(param, &data);

            if (fake_len > 0)
            {
               text->text_length = fake_len;
               text->text = (png_charp)data;
               break;
            }
         }

      default:
         text->text = param;
         break;
   }

   png_set_text(png_ptr, info_ptr, text, 1);

   if (text->text != param)
      free(text->text);
}
