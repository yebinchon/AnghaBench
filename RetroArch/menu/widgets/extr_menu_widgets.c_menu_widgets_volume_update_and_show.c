
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float audio_volume; } ;
struct TYPE_7__ {TYPE_1__ floats; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {int * userdata; int duration; int cb; } ;
typedef TYPE_3__ menu_timer_ctx_entry_t ;


 int AUDIO_ACTION_MUTE_ENABLE ;
 int DEFAULT_BACKDROP ;
 int VOLUME_DURATION ;
 int* audio_get_bool_ptr (int ) ;
 TYPE_2__* config_get_ptr () ;
 int menu_animation_kill_by_tag (int *) ;
 int menu_timer_start (int *,TYPE_3__*) ;
 int menu_widgets_volume_timer_end ;
 int pow (int,float) ;
 int volume_alpha ;
 float volume_db ;
 int volume_mute ;
 int volume_percent ;
 int volume_tag ;
 float volume_text_alpha ;
 int volume_timer ;

void menu_widgets_volume_update_and_show(void)
{
   settings_t *settings = config_get_ptr();
   bool mute = *(audio_get_bool_ptr(AUDIO_ACTION_MUTE_ENABLE));
   float new_volume = settings->floats.audio_volume;
   menu_timer_ctx_entry_t entry;

   menu_animation_kill_by_tag(&volume_tag);

   volume_db = new_volume;
   volume_percent = pow(10, new_volume/20);
   volume_alpha = DEFAULT_BACKDROP;
   volume_text_alpha = 1.0f;
   volume_mute = mute;

   entry.cb = menu_widgets_volume_timer_end;
   entry.duration = VOLUME_DURATION;
   entry.userdata = ((void*)0);

   menu_timer_start(&volume_timer, &entry);
}
