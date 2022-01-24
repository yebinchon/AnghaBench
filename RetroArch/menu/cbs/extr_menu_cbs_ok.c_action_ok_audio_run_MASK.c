#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  scratch_buf; int /*<<< orphan*/  scratch2_buf; } ;
typedef  TYPE_1__ menu_handle_t ;
typedef  int /*<<< orphan*/  combined_path ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_TYPE_FFMPEG ; 
 int /*<<< orphan*/  CORE_TYPE_MPV ; 
 int PATH_MAX_LENGTH ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 

__attribute__((used)) static int FUNC4(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char combined_path[PATH_MAX_LENGTH];
   menu_handle_t *menu                 = FUNC3();

   combined_path[0] = '\0';

   if (!menu)
      return FUNC2();

   FUNC1(combined_path, menu->scratch2_buf,
         menu->scratch_buf, sizeof(combined_path));

   /* TODO/FIXME - should become runtime optional */
#ifdef HAVE_MPV
   return default_action_ok_load_content_with_core_from_menu(combined_path, CORE_TYPE_MPV);
#else
   return FUNC0(combined_path, CORE_TYPE_FFMPEG);
#endif
}