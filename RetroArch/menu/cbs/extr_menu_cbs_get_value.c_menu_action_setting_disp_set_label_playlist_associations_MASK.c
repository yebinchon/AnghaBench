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
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC6(file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   playlist_t *playlist  = FUNC1();
   const char *core_name = NULL;

   *s = '\0';
   *w = 19;

   FUNC5(s2, path, len2);

   if (!playlist)
      return;

   core_name = FUNC2(playlist);

   if (!FUNC3(core_name) &&
       !FUNC4(core_name, "DETECT"))
      FUNC5(s, core_name, len);
   else
      FUNC5(s, FUNC0(MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE), len);
}