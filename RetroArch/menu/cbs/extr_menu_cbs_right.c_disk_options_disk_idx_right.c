
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_DISK_NEXT ;
 int command_event (int ,int *) ;

__attribute__((used)) static int disk_options_disk_idx_right(unsigned type, const char *label,
      bool wraparound)
{
   command_event(CMD_EVENT_DISK_NEXT, ((void*)0));

   return 0;
}
