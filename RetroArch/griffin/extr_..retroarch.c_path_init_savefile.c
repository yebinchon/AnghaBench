
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_AUTOSAVE_INIT ;
 int MSG_SRAM_WILL_NOT_BE_SAVED ;
 int RARCH_CTL_IS_SRAM_SAVE_DISABLED ;
 int RARCH_CTL_IS_SRAM_USED ;
 int RARCH_LOG (char*,int ) ;
 int command_event (int ,int *) ;
 int msg_hash_to_str (int ) ;
 scalar_t__ rarch_ctl (int ,int *) ;
 int rarch_use_sram ;

void path_init_savefile(void)
{
   bool should_sram_be_used = rarch_ctl(RARCH_CTL_IS_SRAM_USED, ((void*)0))
      && !rarch_ctl(RARCH_CTL_IS_SRAM_SAVE_DISABLED, ((void*)0));

   rarch_use_sram = should_sram_be_used;

   if (!rarch_ctl(RARCH_CTL_IS_SRAM_USED, ((void*)0)))
   {
      RARCH_LOG("%s\n",
            msg_hash_to_str(MSG_SRAM_WILL_NOT_BE_SAVED));
      return;
   }

   command_event(CMD_EVENT_AUTOSAVE_INIT, ((void*)0));
}
