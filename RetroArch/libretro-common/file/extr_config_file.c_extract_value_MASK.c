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
 scalar_t__ FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,char*,char**) ; 

__attribute__((used)) static char *FUNC3(char *line, bool is_value)
{
   char *save = NULL;
   char *tok  = NULL;

   if (is_value)
   {
      while (FUNC0((int)*line))
         line++;

      /* If we don't have an equal sign here,
       * we've got an invalid string. */
      if (*line != '=')
         return NULL;

      line++;
   }

   while (FUNC0((int)*line))
      line++;

   /* We have a full string. Read until next ". */
   if (*line == '"')
   {
      line++;
      if (*line == '"')
         return NULL;
      tok = FUNC2(line, "\"", &save);
   }
   /* We don't have that. Read until next space. */
   else if (*line != '\0') /* Nothing */
      tok = FUNC2(line, " \n\t\f\r\v", &save);

   if (tok && *tok)
      return FUNC1(tok);
   return NULL;
}