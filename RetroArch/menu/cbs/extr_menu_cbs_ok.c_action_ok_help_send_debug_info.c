
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_SEND_DEBUG_INFO ;
 int command_event (int ,int *) ;

__attribute__((used)) static int action_ok_help_send_debug_info(const char *path, const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   command_event(CMD_EVENT_SEND_DEBUG_INFO, ((void*)0));
   return 0;
}
