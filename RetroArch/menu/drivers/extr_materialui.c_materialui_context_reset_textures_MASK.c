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
struct TYPE_4__ {int /*<<< orphan*/ * list; } ;
struct TYPE_5__ {TYPE_1__ textures; } ;
typedef  TYPE_2__ materialui_handle_t ;
typedef  int /*<<< orphan*/  icon_path ;

/* Variables and functions */
 int /*<<< orphan*/  APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_ICONS ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_MISSING_ASSETS ; 
 unsigned int MUI_TEXTURE_LAST ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEXTURE_FILTER_MIPMAP_LINEAR ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(materialui_handle_t *mui)
{
   bool has_all_assets = true;
   char icon_path[PATH_MAX_LENGTH];
   unsigned i;

   icon_path[0] = '\0';

   FUNC1(
         icon_path, sizeof(icon_path),
         APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_ICONS);

   /* Loop through all textures */
   for (i = 0; i < MUI_TEXTURE_LAST; i++)
   {
      if (!FUNC3(
            FUNC2(i), icon_path, &mui->textures.list[i],
            TEXTURE_FILTER_MIPMAP_LINEAR, NULL, NULL))
      {
         FUNC0("[GLUI] Asset missing: %s%s%s\n", icon_path, FUNC5(), FUNC2(i));
         has_all_assets = false;
      }
   }

   /* Warn user if assets are missing */
   if (!has_all_assets)
      FUNC6(
            FUNC4(MSG_MISSING_ASSETS), 1, 256, false, NULL,
            MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
}