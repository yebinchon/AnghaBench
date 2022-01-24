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
struct retro_game_info {char const* path; int /*<<< orphan*/  member_0; } ;
struct retro_disk_control_callback {unsigned int (* get_num_images ) () ;int /*<<< orphan*/  (* replace_image_index ) (unsigned int,struct retro_game_info*) ;int /*<<< orphan*/  (* add_image_index ) () ;} ;
struct TYPE_3__ {int /*<<< orphan*/  disk_control_cb; } ;
typedef  TYPE_1__ rarch_system_info_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_AUTOSAVE_INIT ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_APPENDED_DISK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  RARCH_PATH_NAMES ; 
 int /*<<< orphan*/  RARCH_PATH_SUBSYSTEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ runloop_system ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 unsigned int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,struct retro_game_info*) ; 

__attribute__((used)) static bool FUNC14(const char *path)
{
   unsigned new_idx;
   char msg[128];
   struct retro_game_info info                        = {0};
   const struct retro_disk_control_callback *control  = NULL;
   rarch_system_info_t *sysinfo                       = &runloop_system;

   msg[0] = '\0';

   if (sysinfo)
      control = (const struct retro_disk_control_callback*)
         &sysinfo->disk_control_cb;

   if (!control)
      return false;

   FUNC2(true, false);

   control->add_image_index();
   new_idx = control->get_num_images();
   if (!new_idx)
      return false;
   new_idx--;

   info.path = path;
   control->replace_image_index(new_idx, &info);

   FUNC10(msg, sizeof(msg), "%s: %s", FUNC4(MSG_APPENDED_DISK), path);
   FUNC0("%s\n", msg);
   FUNC9(msg, 0, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

#ifdef HAVE_THREADS
   retroarch_autosave_deinit();
#endif

   /* TODO: Need to figure out what to do with subsystems case. */
   if (FUNC6(RARCH_PATH_SUBSYSTEM))
   {
      /* Update paths for our new image.
       * If we actually use append_image, we assume that we
       * started out in a single disk case, and that this way
       * of doing it makes the most sense. */
      FUNC7(RARCH_PATH_NAMES, path);
      FUNC5();
   }

   FUNC1(CMD_EVENT_AUTOSAVE_INIT, NULL);
   FUNC3(new_idx);
   FUNC2(false, false);

   return true;
}