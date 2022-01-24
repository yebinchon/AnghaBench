#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  input_bind_timeout; int /*<<< orphan*/  input_bind_hold; int /*<<< orphan*/ * input_joypad_map; } ;
struct TYPE_12__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_13__ {unsigned int index_offset; } ;
typedef  TYPE_3__ rarch_setting_t ;
typedef  int /*<<< orphan*/  menu_handle_t ;
struct TYPE_14__ {int /*<<< orphan*/  cb; int /*<<< orphan*/ * userdata; } ;
typedef  TYPE_4__ input_keyboard_ctx_wait_t ;
typedef  enum menu_input_binds_ctl_state { ____Placeholder_menu_input_binds_ctl_state } menu_input_binds_ctl_state ;
struct TYPE_15__ {int /*<<< orphan*/  timer_timeout; int /*<<< orphan*/  timer_hold; } ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_INPUT_KEYBOARD_CTL_START_WAIT_KEYS ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  menu_bind_port ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 TYPE_6__ menu_input_binds ; 
 int /*<<< orphan*/  menu_input_key_bind_custom_bind_keyboard_cb ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC7(
      enum menu_input_binds_ctl_state state, void *data)
{
   unsigned index_offset;
   input_keyboard_ctx_wait_t keys;
   rarch_setting_t  *setting = (rarch_setting_t*)data;
   settings_t *settings      = FUNC0();
   menu_handle_t       *menu = FUNC2();

   if (!setting || !menu)
      return false;
   if (FUNC5(state, setting) == -1)
      return false;

   index_offset      = setting->index_offset;
   menu_bind_port    = settings->uints.input_joypad_map[index_offset];

   FUNC3(
         &menu_input_binds, menu_bind_port);
   FUNC4(
         &menu_input_binds, menu_bind_port, false);

   FUNC6(&menu_input_binds.timer_hold, settings->uints.input_bind_hold);
   FUNC6(&menu_input_binds.timer_timeout, settings->uints.input_bind_timeout);

   keys.userdata = menu;
   keys.cb       = menu_input_key_bind_custom_bind_keyboard_cb;

   FUNC1(RARCH_INPUT_KEYBOARD_CTL_START_WAIT_KEYS, &keys);
   return true;
}