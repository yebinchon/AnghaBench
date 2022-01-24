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
struct string_list {int size; } ;
struct TYPE_3__ {char* str; int line_len; int max_lines; char* s; int type_enum; int /*<<< orphan*/  len; int /*<<< orphan*/  idx; } ;
typedef  TYPE_1__ menu_animation_ctx_line_ticker_t ;

/* Variables and functions */
#define  TICKER_TYPE_BOUNCE 129 
#define  TICKER_TYPE_LOOP 128 
 int /*<<< orphan*/  FUNC0 (int,size_t,struct string_list*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,size_t*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*) ; 
 struct string_list* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*) ; 
 int ticker_is_active ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int,int,int /*<<< orphan*/ ) ; 

bool FUNC11(menu_animation_ctx_line_ticker_t *line_ticker)
{
   char *wrapped_str         = NULL;
   struct string_list *lines = NULL;
   size_t line_offset        = 0;
   bool success              = false;
   bool is_active            = false;

   /* Sanity check */
   if (!line_ticker)
      return false;

   if (FUNC5(line_ticker->str) ||
       (line_ticker->line_len < 1) ||
       (line_ticker->max_lines < 1))
      goto end;

   /* Line wrap input string */
   wrapped_str = (char*)FUNC2((FUNC9(line_ticker->str) + 1) * sizeof(char));
   if (!wrapped_str)
      goto end;

   FUNC10(
         wrapped_str,
         line_ticker->str,
         (int)line_ticker->line_len,
         true, 0);

   if (FUNC5(wrapped_str))
      goto end;

   /* Split into component lines */
   lines = FUNC7(wrapped_str, "\n");
   if (!lines)
      goto end;

   /* Check whether total number of lines fits within
    * the set limit */
   if (lines->size <= line_ticker->max_lines)
   {
      FUNC8(line_ticker->s, wrapped_str, line_ticker->len);
      success = true;
      goto end;
   }

   /* Determine offset of first line in wrapped string */
   switch (line_ticker->type_enum)
   {
      case TICKER_TYPE_LOOP:
      {
         FUNC4(
               line_ticker->idx,
               line_ticker->line_len,
               lines->size,
               &line_offset);

         break;
      }
      case TICKER_TYPE_BOUNCE:
      default:
      {
         FUNC3(
               line_ticker->idx,
               line_ticker->line_len,
               line_ticker->max_lines,
               lines->size,
               &line_offset);

         break;
      }
   }

   /* Build output string from required lines */
   FUNC0(
      line_ticker->max_lines, line_offset, lines,
      line_ticker->s, line_ticker->len);

   success          = true;
   is_active        = true;
   ticker_is_active = true;

end:

   if (wrapped_str)
   {
      FUNC1(wrapped_str);
      wrapped_str = NULL;
   }

   if (lines)
   {
      FUNC6(lines);
      lines = NULL;
   }

   if (!success)
      if (line_ticker->len > 0)
         line_ticker->s[0] = '\0';

   return is_active;
}