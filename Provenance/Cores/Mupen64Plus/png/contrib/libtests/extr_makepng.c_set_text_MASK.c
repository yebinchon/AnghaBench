#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* png_textp ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_size_t ;
typedef  int /*<<< orphan*/  png_infop ;
typedef  int* png_charp ;
typedef  int /*<<< orphan*/ * png_bytep ;
struct TYPE_4__ {int* text; int /*<<< orphan*/  text_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC4(png_structp png_ptr, png_infop info_ptr, png_textp text,
   png_charp param)
{
   switch (param[0])
   {
      case '<':
         {
            png_bytep file = NULL;

            text->text_length = FUNC2(param+1, &file);
            text->text = (png_charp)file;
         }
         break;

      case '0': case '1': case '2': case '3': case '4':
      case '5': case '6': case '7': case '8': case '9':
         {
            png_bytep data = NULL;
            png_size_t fake_len = FUNC1(param, &data);

            if (fake_len > 0) /* else a simple parameter */
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

   FUNC3(png_ptr, info_ptr, text, 1);

   if (text->text != param)
      FUNC0(text->text);
}