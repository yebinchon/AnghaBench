
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int netplay_server; } ;
struct TYPE_7__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {char* label_setting; int (* cb ) (int *,int ) ;scalar_t__ idx; scalar_t__ type; int label; } ;
typedef TYPE_3__ menu_input_ctx_line_t ;


 int CMD_EVENT_NETPLAY_DEINIT ;
 int MENU_ENUM_LABEL_VALUE_NETPLAY_IP_ADDRESS ;
 int RARCH_NETPLAY_CTL_ENABLE_CLIENT ;
 int RARCH_NETPLAY_CTL_IS_DATA_INITED ;
 int action_ok_netplay_enable_client_hostname_cb (int *,int ) ;
 TYPE_2__* config_get_ptr () ;
 int generic_action_ok_command (int ) ;
 scalar_t__ menu_input_dialog_start (TYPE_3__*) ;
 int msg_hash_to_str (int ) ;
 scalar_t__ netplay_driver_ctl (int ,int *) ;
 int string_is_empty (int ) ;

__attribute__((used)) static int action_ok_netplay_enable_client(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   return -1;
}
