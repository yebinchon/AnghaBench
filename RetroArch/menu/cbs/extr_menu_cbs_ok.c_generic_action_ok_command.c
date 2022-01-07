
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ audio_enable_menu_ok; scalar_t__ audio_enable_menu; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
typedef enum event_command { ____Placeholder_event_command } event_command ;


 int AUDIO_MIXER_SYSTEM_SLOT_OK ;
 int audio_driver_mixer_play_menu_sound (int ) ;
 int command_event (int,int *) ;
 TYPE_2__* config_get_ptr () ;
 int menu_cbs_exit () ;

int generic_action_ok_command(enum event_command cmd)
{







   if (!command_event(cmd, ((void*)0)))
      return menu_cbs_exit();
   return 0;
}
