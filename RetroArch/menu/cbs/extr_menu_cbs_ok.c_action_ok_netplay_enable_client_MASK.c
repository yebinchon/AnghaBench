#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  netplay_server; } ;
struct TYPE_7__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_8__ {char* label_setting; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;scalar_t__ idx; scalar_t__ type; int /*<<< orphan*/  label; } ;
typedef  TYPE_3__ menu_input_ctx_line_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_NETPLAY_DEINIT ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NETPLAY_IP_ADDRESS ; 
 int /*<<< orphan*/  RARCH_NETPLAY_CTL_ENABLE_CLIENT ; 
 int /*<<< orphan*/  RARCH_NETPLAY_CTL_IS_DATA_INITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
#ifdef HAVE_NETWORKING
   settings_t *settings = config_get_ptr();
   menu_input_ctx_line_t line;
   if (netplay_driver_ctl(RARCH_NETPLAY_CTL_IS_DATA_INITED, NULL))
      generic_action_ok_command(CMD_EVENT_NETPLAY_DEINIT);
   netplay_driver_ctl(RARCH_NETPLAY_CTL_ENABLE_CLIENT, NULL);

   if (!string_is_empty(settings->paths.netplay_server))
   {
      action_ok_netplay_enable_client_hostname_cb(NULL, settings->paths.netplay_server);
      return 0;
   }
   else
   {
      line.label         = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NETPLAY_IP_ADDRESS);
      line.label_setting = "no_setting";
      line.type          = 0;
      line.idx           = 0;
      line.cb            = action_ok_netplay_enable_client_hostname_cb;

      if (menu_input_dialog_start(&line))
         return 0;
   }
#endif
   return -1;
}