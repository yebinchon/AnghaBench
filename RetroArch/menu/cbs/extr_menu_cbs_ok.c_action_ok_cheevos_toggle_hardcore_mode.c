
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_CHEEVOS_HARDCORE_MODE_TOGGLE ;
 int CMD_EVENT_RESUME ;
 int generic_action_ok_command (int ) ;
 int rcheevos_hardcore_paused ;

__attribute__((used)) static int action_ok_cheevos_toggle_hardcore_mode(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{



   generic_action_ok_command(CMD_EVENT_CHEEVOS_HARDCORE_MODE_TOGGLE);
   return generic_action_ok_command(CMD_EVENT_RESUME);
}
