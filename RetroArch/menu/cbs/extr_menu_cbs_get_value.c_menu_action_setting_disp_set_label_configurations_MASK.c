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
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_DIRECTORY_DEFAULT ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC5(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   *w = 19;
   FUNC4(s2, path, len2);

   if (!FUNC3(RARCH_PATH_CONFIG))
      FUNC0(s, FUNC2(RARCH_PATH_CONFIG),
            len);
   else
      FUNC4(s, FUNC1(MENU_ENUM_LABEL_VALUE_DIRECTORY_DEFAULT), len);
}