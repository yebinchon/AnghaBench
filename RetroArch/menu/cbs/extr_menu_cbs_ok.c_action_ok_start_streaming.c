
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_RECORD_INIT ;
 int CMD_EVENT_RESUME ;
 int command_event (int ,int *) ;
 int generic_action_ok_command (int ) ;
 int streaming_set_state (int) ;

__attribute__((used)) static int action_ok_start_streaming(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   streaming_set_state(1);
   command_event(CMD_EVENT_RECORD_INIT, ((void*)0));
   return generic_action_ok_command(CMD_EVENT_RESUME);
}
