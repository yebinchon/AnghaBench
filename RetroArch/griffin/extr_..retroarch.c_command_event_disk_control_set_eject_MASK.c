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
struct retro_disk_control_callback {scalar_t__ (* set_eject_state ) (int) ;int /*<<< orphan*/  get_num_images; } ;
struct TYPE_3__ {int /*<<< orphan*/  disk_control_cb; } ;
typedef  TYPE_1__ rarch_system_info_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_DISK_CLOSED ; 
 int /*<<< orphan*/  MSG_DISK_EJECTED ; 
 int /*<<< orphan*/  MSG_FAILED_TO ; 
 int /*<<< orphan*/  MSG_VIRTUAL_DISK_TRAY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ runloop_system ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(bool new_state, bool print_log)
{
   char msg[128];
   bool error                                        = false;
   const struct retro_disk_control_callback *control = NULL;
   rarch_system_info_t *info                         = &runloop_system;

   msg[0] = '\0';

   if (info)
      control = (const struct retro_disk_control_callback*)&info->disk_control_cb;

   if (!control || !control->get_num_images)
      return;

   if (control->set_eject_state(new_state))
      FUNC4(msg, sizeof(msg), "%s %s",
            new_state ?
            FUNC2(MSG_DISK_EJECTED) :
            FUNC2(MSG_DISK_CLOSED),
            FUNC2(MSG_VIRTUAL_DISK_TRAY));
   else
   {
      error = true;
      FUNC4(msg, sizeof(msg), "%s %s %s",
            FUNC2(MSG_FAILED_TO),
            new_state ? "eject" : "close",
            FUNC2(MSG_VIRTUAL_DISK_TRAY));
   }

   if (!FUNC5(msg))
   {
      if (error)
         FUNC0("%s\n", msg);
      else
         FUNC1("%s\n", msg);

      /* Only noise in menu. */
      if (print_log)
         FUNC3(msg, 1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }
}