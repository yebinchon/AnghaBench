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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,char*) ; 

int FUNC4(const char *line, char *link, char *name,
      size_t link_size, size_t name_size)
{
   if (!line || !link || !name)
      return 1;

   FUNC1(link, 0, link_size);
   FUNC1(name, 0, name_size);

   line = FUNC2(line, "<a href=\"");

   if (!line)
      return 1;

   line += 9;

   if (line && *line)
   {
      if (!*link)
      {
         const char *end = FUNC3(line, "\"");

         if (!end)
            return 1;

         FUNC0(link, line, end - line);

         *(link + (end - line)) = '\0';
         line += end - line;
      }

      if (!*name)
      {
         const char *start = FUNC3(line, "\">");
         const char *end   = start ? FUNC3(start, "</a>") : NULL;

         if (!start || !end)
            return 1;

         FUNC0(name, start + 2, end - start - 2);

         *(name + (end - start - 2)) = '\0';
      }
   }

   return 0;
}