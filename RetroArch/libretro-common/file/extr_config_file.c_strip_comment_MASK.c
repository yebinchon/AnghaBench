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

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(char *str)
{
   /* Remove everything after comment.
    * Keep #s inside string literals. */
   char *string_end  = str + FUNC2(str);
   bool cut_comment  = true;

   while (!FUNC1(str))
   {
      char *comment  = NULL;
      char *literal  = FUNC0(str, '\"');
      if (!literal)
         literal     = string_end;
      comment        = (char*)FUNC0(str, '#');

      if (!comment)
         comment     = string_end;

      if (cut_comment && literal < comment)
      {
         cut_comment = false;
         str         = literal + 1;
      }
      else if (!cut_comment && literal)
      {
         cut_comment = true;
         str         = (literal < string_end) ? literal + 1 : string_end;
      }
      else
      {
         *comment    = '\0';
         str         = comment;
      }
   }

   return str;
}