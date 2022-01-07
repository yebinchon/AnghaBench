
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int streaming_mode; int video_stream_port; } ;
struct TYPE_7__ {int path_stream_url; } ;
struct TYPE_6__ {int twitch_stream_key; int youtube_stream_key; } ;
struct TYPE_9__ {TYPE_3__ uints; TYPE_2__ paths; TYPE_1__ arrays; } ;
typedef TYPE_4__ settings_t ;






 TYPE_4__* configuration_settings ;
 int snprintf (int ,int,char*,char const*,int) ;
 int string_is_empty (int) ;

void recording_driver_update_streaming_url(void)
{
   settings_t *settings = configuration_settings;
   const char* youtube_url = "rtmp://a.rtmp.youtube.com/live2/";
   const char* twitch_url = "rtmp://live.twitch.tv/app/";

   if (!settings)
      return;

   switch (settings->uints.streaming_mode)
   {
      case 129:
         if (!string_is_empty(settings->arrays.twitch_stream_key))
            snprintf(settings->paths.path_stream_url,
                  sizeof(settings->paths.path_stream_url),
                  "%s%s", twitch_url, settings->arrays.twitch_stream_key);
         break;
      case 128:
         if (!string_is_empty(settings->arrays.youtube_stream_key))
            snprintf(settings->paths.path_stream_url,
                  sizeof(settings->paths.path_stream_url),
                  "%s%s", youtube_url, settings->arrays.youtube_stream_key);
         break;
      case 130:

         snprintf(settings->paths.path_stream_url, sizeof(settings->paths.path_stream_url),
            "udp://%s:%u", "127.0.0.1", settings->uints.video_stream_port);
         break;
      case 131:
      default:

         break;
   }
}
