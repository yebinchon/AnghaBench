
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct config_array_setting {int dummy; } ;
struct TYPE_4__ {int ai_service_url; int discord_app_id; int twitch_stream_key; int youtube_stream_key; int midi_output; int midi_input; int midi_driver; int netplay_mitm_server; int led_driver; int bundle_assets_dst_subdir; int bundle_assets_dst; int bundle_assets_src; int input_keyboard_layout; int input_joypad_driver; int input_driver; int audio_resampler; int audio_driver; int video_context_driver; int cheevos_token; int cheevos_password; int cheevos_username; int camera_device; int audio_device; int menu_driver; int location_driver; int wifi_driver; int camera_driver; int record_driver; int video_driver; } ;
struct TYPE_5__ {TYPE_1__ arrays; } ;
typedef TYPE_2__ settings_t ;


 int * DEFAULT_AI_SERVICE_URL ;
 int SETTING_ARRAY (char*,int ,int,int *,int) ;
 scalar_t__ calloc (int,int) ;
 int * default_discord_app_id ;
 int * midi_input ;
 int * midi_output ;

__attribute__((used)) static struct config_array_setting *populate_settings_array(settings_t *settings, int *size)
{
   unsigned count = 0;
   struct config_array_setting *tmp = (struct config_array_setting*)calloc(1, (*size + 1) * sizeof(struct config_array_setting));

   if (!tmp)
      return ((void*)0);


   SETTING_ARRAY("video_driver", settings->arrays.video_driver, 0, ((void*)0), 1);
   SETTING_ARRAY("record_driver", settings->arrays.record_driver, 0, ((void*)0), 1);
   SETTING_ARRAY("camera_driver", settings->arrays.camera_driver, 0, ((void*)0), 1);
   SETTING_ARRAY("wifi_driver", settings->arrays.wifi_driver, 0, ((void*)0), 1);
   SETTING_ARRAY("location_driver", settings->arrays.location_driver,0, ((void*)0), 1);



   SETTING_ARRAY("audio_device", settings->arrays.audio_device, 0, ((void*)0), 1);
   SETTING_ARRAY("camera_device", settings->arrays.camera_device, 0, ((void*)0), 1);





   SETTING_ARRAY("video_context_driver", settings->arrays.video_context_driver, 0, ((void*)0), 1);
   SETTING_ARRAY("audio_driver", settings->arrays.audio_driver, 0, ((void*)0), 1);
   SETTING_ARRAY("audio_resampler", settings->arrays.audio_resampler, 0, ((void*)0), 1);
   SETTING_ARRAY("input_driver", settings->arrays.input_driver, 0, ((void*)0), 1);
   SETTING_ARRAY("input_joypad_driver", settings->arrays.input_joypad_driver, 0, ((void*)0), 1);
   SETTING_ARRAY("input_keyboard_layout", settings->arrays.input_keyboard_layout, 0, ((void*)0), 1);
   SETTING_ARRAY("bundle_assets_src_path", settings->arrays.bundle_assets_src, 0, ((void*)0), 1);
   SETTING_ARRAY("bundle_assets_dst_path", settings->arrays.bundle_assets_dst, 0, ((void*)0), 1);
   SETTING_ARRAY("bundle_assets_dst_path_subdir", settings->arrays.bundle_assets_dst_subdir, 0, ((void*)0), 1);
   SETTING_ARRAY("led_driver", settings->arrays.led_driver, 0, ((void*)0), 1);
   SETTING_ARRAY("netplay_mitm_server", settings->arrays.netplay_mitm_server, 0, ((void*)0), 1);
   SETTING_ARRAY("midi_driver", settings->arrays.midi_driver, 0, ((void*)0), 1);
   SETTING_ARRAY("midi_input", settings->arrays.midi_input, 1, midi_input, 1);
   SETTING_ARRAY("midi_output", settings->arrays.midi_output, 1, midi_output, 1);
   SETTING_ARRAY("youtube_stream_key", settings->arrays.youtube_stream_key, 1, ((void*)0), 1);
   SETTING_ARRAY("twitch_stream_key", settings->arrays.twitch_stream_key, 1, ((void*)0), 1);
   SETTING_ARRAY("discord_app_id", settings->arrays.discord_app_id, 1, default_discord_app_id, 1);
   SETTING_ARRAY("ai_service_url", settings->arrays.ai_service_url, 1, DEFAULT_AI_SERVICE_URL, 1);

   *size = count;

   return tmp;
}
