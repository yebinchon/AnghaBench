#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  directory_assets; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 int PATH_MAX_LENGTH ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 
 char const** font_paths ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC5(void)
{
#ifdef WIIU
   return "";
#else
   size_t i;
#if 0
   char asset_path[PATH_MAX_LENGTH];
#endif

   for (i = 0; i < FUNC0(font_paths); i++)
   {
#if 0
      /* Check if we are getting the font from the assets directory. */
      if (string_is_equal(font_paths[i], "assets://pkg/osd-font.ttf"))
      {
         settings_t *settings = config_get_ptr();
         fill_pathname_join(asset_path,
               settings->paths.directory_assets, "pkg/osd-font.ttf", PATH_MAX_LENGTH);
         font_paths[i] = asset_path;
      }
#endif

      if (FUNC3(font_paths[i]))
         return font_paths[i];
   }

   return NULL;
#endif
}