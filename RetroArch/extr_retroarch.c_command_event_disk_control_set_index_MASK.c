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
struct retro_disk_control_callback {unsigned int (* get_num_images ) () ;scalar_t__ (* set_image_index ) (unsigned int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  disk_control_cb; } ;
typedef  TYPE_1__ rarch_system_info_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_FAILED_TO_REMOVE_DISK_FROM_TRAY ; 
 int /*<<< orphan*/  MSG_FAILED_TO_SET_DISK ; 
 int /*<<< orphan*/  MSG_REMOVED_DISK_FROM_TRAY ; 
 int /*<<< orphan*/  MSG_SETTING_DISK_IN_TRAY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ runloop_system ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 unsigned int FUNC7 () ; 
 scalar_t__ FUNC8 (unsigned int) ; 

__attribute__((used)) static void FUNC9(unsigned idx)
{
   unsigned num_disks;
   char msg[128];
   bool error                                        = false;
   const struct retro_disk_control_callback *control = NULL;
   rarch_system_info_t *info                         = &runloop_system;

   msg[0] = '\0';

   if (info)
      control = (const struct retro_disk_control_callback*)&info->disk_control_cb;

   if (!control || !control->get_num_images)
      return;

   num_disks = control->get_num_images();

   if (control->set_image_index(idx))
   {
      if (idx < num_disks)
         FUNC4(msg, sizeof(msg), "%s: %u/%u.",
               FUNC2(MSG_SETTING_DISK_IN_TRAY),
               idx + 1, num_disks);
      else
         FUNC6(msg,
               FUNC2(MSG_REMOVED_DISK_FROM_TRAY),
               sizeof(msg));
   }
   else
   {
      if (idx < num_disks)
         FUNC4(msg, sizeof(msg), "%s %u/%u.",
               FUNC2(MSG_FAILED_TO_SET_DISK),
               idx + 1, num_disks);
      else
         FUNC6(msg,
               FUNC2(MSG_FAILED_TO_REMOVE_DISK_FROM_TRAY),
               sizeof(msg));
      error = true;
   }

   if (!FUNC5(msg))
   {
      if (error)
         FUNC0("%s\n", msg);
      else
         FUNC1("%s\n", msg);
      FUNC3(msg, 1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }
}