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
typedef  scalar_t__ menu_texture_item ;
typedef  int /*<<< orphan*/  badge_file ;

/* Variables and functions */
 int /*<<< orphan*/  APPLICATION_SPECIAL_DIRECTORY_THUMBNAILS_CHEEVOS_BADGES ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  TEXTURE_FILTER_MIPMAP_LINEAR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC4(menu_texture_item *tex, const char *badge)
{
   char badge_file[16];
   char fullpath[PATH_MAX_LENGTH];

   if (!badge)
   {
      *tex = 0;
      return;
   }

   FUNC3(badge_file, badge, sizeof(badge_file));
   FUNC2(badge_file, ".png", sizeof(badge_file));
   FUNC0(fullpath,
         PATH_MAX_LENGTH * sizeof(char),
         APPLICATION_SPECIAL_DIRECTORY_THUMBNAILS_CHEEVOS_BADGES);

   FUNC1(badge_file, fullpath,
         tex, TEXTURE_FILTER_MIPMAP_LINEAR, NULL, NULL);
}