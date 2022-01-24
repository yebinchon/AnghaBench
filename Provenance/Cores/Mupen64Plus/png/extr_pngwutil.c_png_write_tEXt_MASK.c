#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  int /*<<< orphan*/  png_structrp ;
typedef  scalar_t__ png_size_t ;
typedef  char* png_const_charp ;
typedef  int /*<<< orphan*/ * png_const_bytep ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 scalar_t__ PNG_UINT_31_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  png_tEXt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (char*) ; 

void /* PRIVATE */
FUNC7(png_structrp png_ptr, png_const_charp key, png_const_charp text,
    png_size_t text_len)
{
   png_uint_32 key_len;
   png_byte new_key[80];

   FUNC1(1, "in png_write_tEXt");

   key_len = FUNC0(png_ptr, key, new_key);

   if (key_len == 0)
      FUNC2(png_ptr, "tEXt: invalid keyword");

   if (text == NULL || *text == '\0')
      text_len = 0;

   else
      text_len = FUNC6(text);

   if (text_len > PNG_UINT_31_MAX - (key_len+1))
      FUNC2(png_ptr, "tEXt: text too long");

   /* Make sure we include the 0 after the key */
   FUNC5(png_ptr, png_tEXt,
       (png_uint_32)/*checked above*/(key_len + text_len + 1));
   /*
    * We leave it to the application to meet PNG-1.0 requirements on the
    * contents of the text.  PNG-1.0 through PNG-1.2 discourage the use of
    * any non-Latin-1 characters except for NEWLINE.  ISO PNG will forbid them.
    * The NUL character is forbidden by PNG-1.0 through PNG-1.2 and ISO PNG.
    */
   FUNC3(png_ptr, new_key, key_len + 1);

   if (text_len != 0)
      FUNC3(png_ptr, (png_const_bytep)text, text_len);

   FUNC4(png_ptr);
}