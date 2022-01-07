
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_SAVE_STATE ;
 int command_event (int ,int *) ;

void cmd_save_state(void)
{
   command_event(CMD_EVENT_SAVE_STATE, ((void*)0));
}
