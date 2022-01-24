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
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 scalar_t__ FUNC3 (unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC4(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   unsigned width = 0, height = 0;

   *w = 19;
   *s = '\0';

   FUNC2(s2, path, len2);

   if (FUNC3(&width, &height))
   {
#ifdef GEKKO
      if (width == 0 || height == 0)
         strlcpy(s, "DEFAULT", len);
      else
#endif
         FUNC1(s, len, "%ux%u", width, height);
   }
   else
      FUNC2(s, FUNC0(MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE), len);
}