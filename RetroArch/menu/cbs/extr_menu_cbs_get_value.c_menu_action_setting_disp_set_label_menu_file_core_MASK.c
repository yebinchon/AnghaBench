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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   const char *alt = NULL;
   FUNC1(s, "(CORE)", len);

   FUNC0(list, i, NULL,
         NULL, NULL, NULL, &alt);

   *w = (unsigned)FUNC2(s);
   if (alt)
      FUNC1(s2, alt, len2);
}