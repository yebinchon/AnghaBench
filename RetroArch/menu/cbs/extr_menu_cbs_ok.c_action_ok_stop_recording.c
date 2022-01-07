
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_RECORD_DEINIT ;
 int CMD_EVENT_RESUME ;
 int command_event (int ,int *) ;
 int generic_action_ok_command (int ) ;

__attribute__((used)) static int action_ok_stop_recording(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   command_event(CMD_EVENT_RECORD_DEINIT, ((void*)0));
   return generic_action_ok_command(CMD_EVENT_RESUME);
}
