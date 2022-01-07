
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float audio_mixer_volume; } ;
struct TYPE_6__ {TYPE_1__ floats; } ;
typedef TYPE_2__ settings_t ;
typedef int msg ;


 int AUDIO_ACTION_VOLUME_GAIN ;
 float MAX (float,float) ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 float MIN (float,float) ;
 int MSG_AUDIO_VOLUME ;
 int RARCH_LOG (char*,char*) ;
 int audio_set_float (int ,float) ;
 int configuration_set_float (TYPE_2__*,float,float) ;
 TYPE_2__* configuration_settings ;
 char* msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int snprintf (char*,int,char*,char*,float) ;

__attribute__((used)) static void command_event_set_mixer_volume(float gain)
{
   char msg[128];
   settings_t *settings = configuration_settings;
   float new_volume = settings->floats.audio_mixer_volume + gain;

   new_volume = MAX(new_volume, -80.0f);
   new_volume = MIN(new_volume, 12.0f);

   configuration_set_float(settings, settings->floats.audio_mixer_volume, new_volume);

   snprintf(msg, sizeof(msg), "%s: %.1f dB",
         msg_hash_to_str(MSG_AUDIO_VOLUME),
         new_volume);
   runloop_msg_queue_push(msg, 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   RARCH_LOG("%s\n", msg);

   audio_set_float(AUDIO_ACTION_VOLUME_GAIN, new_volume);
}
