
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_DISK_PREV ;
 int command_event (int ,int *) ;

__attribute__((used)) static int disk_options_disk_idx_left(unsigned type, const char *label,
      bool wraparound)
{
   command_event(CMD_EVENT_DISK_PREV, ((void*)0));
   return 0;
}
