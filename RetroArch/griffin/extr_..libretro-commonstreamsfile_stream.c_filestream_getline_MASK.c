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
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,size_t) ; 

char* FUNC4(RFILE *stream)
{
   char *newline_tmp  = NULL;
   size_t cur_size    = 8;
   size_t idx         = 0;
   int in             = 0;
   char *newline      = (char*)FUNC2(9);

   if (!stream || !newline)
   {
      if (newline)
         FUNC1(newline);
      return NULL;
   }

   in                 = FUNC0(stream);

   while (in != EOF && in != '\n')
   {
      if (idx == cur_size)
      {
         cur_size    *= 2;
         newline_tmp  = (char*)FUNC3(newline, cur_size + 1);

         if (!newline_tmp)
         {
            FUNC1(newline);
            return NULL;
         }

         newline     = newline_tmp;
      }

      newline[idx++] = in;
      in             = FUNC0(stream);
   }

   newline[idx]      = '\0';
   return newline;
}