#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* png_const_textp ;
typedef  int /*<<< orphan*/  png_const_structp ;
typedef  char* png_const_charp ;
struct TYPE_3__ {scalar_t__ compression; char* key; char* text; scalar_t__ text_length; scalar_t__ itxt_length; char* lang; char* lang_key; } ;

/* Variables and functions */
 scalar_t__ TEXT_COMPRESSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC1 (char*,int,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(png_const_structp pp, png_const_textp tp,
   png_const_charp keyword, png_const_charp text)
{
   char msg[1024];
   size_t pos = FUNC1(msg, sizeof msg, 0, "text: ");
   size_t ok;

   pos = FUNC1(msg, sizeof msg, pos, keyword);
   pos = FUNC1(msg, sizeof msg, pos, ": ");
   ok = pos;

   if (tp->compression != TEXT_COMPRESSION)
   {
      char buf[64];

      FUNC2(buf, "compression [%d->%d], ", TEXT_COMPRESSION,
         tp->compression);
      pos = FUNC1(msg, sizeof msg, pos, buf);
   }

   if (tp->key == NULL || FUNC3(tp->key, keyword) != 0)
   {
      pos = FUNC1(msg, sizeof msg, pos, "keyword \"");
      if (tp->key != NULL)
      {
         pos = FUNC1(msg, sizeof msg, pos, tp->key);
         pos = FUNC1(msg, sizeof msg, pos, "\", ");
      }

      else
         pos = FUNC1(msg, sizeof msg, pos, "null, ");
   }

   if (tp->text == NULL)
      pos = FUNC1(msg, sizeof msg, pos, "text lost, ");

   else
   {
      if (tp->text_length != FUNC4(text))
      {
         char buf[64];
         FUNC2(buf, "text length changed[%lu->%lu], ",
            (unsigned long)FUNC4(text), (unsigned long)tp->text_length);
         pos = FUNC1(msg, sizeof msg, pos, buf);
      }

      if (FUNC3(tp->text, text) != 0)
      {
         pos = FUNC1(msg, sizeof msg, pos, "text becomes \"");
         pos = FUNC1(msg, sizeof msg, pos, tp->text);
         pos = FUNC1(msg, sizeof msg, pos, "\" (was \"");
         pos = FUNC1(msg, sizeof msg, pos, text);
         pos = FUNC1(msg, sizeof msg, pos, "\"), ");
      }
   }

   if (tp->itxt_length != 0)
      pos = FUNC1(msg, sizeof msg, pos, "iTXt length set, ");

   if (tp->lang != NULL)
   {
      pos = FUNC1(msg, sizeof msg, pos, "iTXt language \"");
      pos = FUNC1(msg, sizeof msg, pos, tp->lang);
      pos = FUNC1(msg, sizeof msg, pos, "\", ");
   }

   if (tp->lang_key != NULL)
   {
      pos = FUNC1(msg, sizeof msg, pos, "iTXt keyword \"");
      pos = FUNC1(msg, sizeof msg, pos, tp->lang_key);
      pos = FUNC1(msg, sizeof msg, pos, "\", ");
   }

   if (pos > ok)
   {
      msg[pos-2] = '\0'; /* Remove the ", " at the end */
      FUNC0(pp, msg);
   }
}