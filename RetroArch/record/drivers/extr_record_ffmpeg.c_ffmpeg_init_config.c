
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_config_param {int scale_factor; int threads; int frame_drop_ratio; int audio_enable; char* vcodec; char* acodec; char* format; int sample_rate; int audio_opts; int video_opts; int conf; int out_pix_fmt; int video_bit_rate; int video_global_quality; void* video_qscale; int audio_bit_rate; int audio_global_quality; void* audio_qscale; } ;
struct config_file_entry {char* key; int value; } ;
typedef int pix_fmt ;


 int PIX_FMT_NONE ;
 int RARCH_ERR (char*,char const*) ;
 int RARCH_LOG (char*,char const*) ;
 int STRLEN_CONST (char*) ;
 int av_dict_set (int *,char const*,int ,int ) ;
 int av_get_pix_fmt (char*) ;
 int config_file_new_from_path_to_string (char const*) ;
 scalar_t__ config_get_array (int ,char*,char*,int) ;
 int config_get_bool (int ,char*,int*) ;
 int config_get_entry_list_head (int ,struct config_file_entry*) ;
 scalar_t__ config_get_entry_list_next (struct config_file_entry*) ;
 int config_get_float (int ,char*,int*) ;
 void* config_get_int (int ,char*,int *) ;
 int config_get_uint (int ,char*,int*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static bool ffmpeg_init_config(struct ff_config_param *params,
      const char *config)
{
   struct config_file_entry entry;
   char pix_fmt[64] = {0};

   params->out_pix_fmt = PIX_FMT_NONE;
   params->scale_factor = 1;
   params->threads = 1;
   params->frame_drop_ratio = 1;
   params->audio_enable = 1;

   if (!config)
      return 1;

   RARCH_LOG("[FFmpeg] Loading FFmpeg config \"%s\".\n", config);

   if (!(params->conf = config_file_new_from_path_to_string(config)))
   {
      RARCH_ERR("[FFmpeg] Failed to load FFmpeg config \"%s\".\n", config);
      return 0;
   }

   config_get_array(params->conf, "vcodec", params->vcodec,
         sizeof(params->vcodec));
   config_get_array(params->conf, "acodec", params->acodec,
         sizeof(params->acodec));
   config_get_array(params->conf, "format", params->format,
         sizeof(params->format));

   config_get_uint(params->conf, "threads", &params->threads);

   if (!config_get_uint(params->conf, "frame_drop_ratio",
            &params->frame_drop_ratio) || !params->frame_drop_ratio)
      params->frame_drop_ratio = 1;

   if (!config_get_bool(params->conf, "audio_enable", &params->audio_enable))
      params->audio_enable = 1;

   config_get_uint(params->conf, "sample_rate", &params->sample_rate);
   config_get_float(params->conf, "scale_factor", &params->scale_factor);

   params->audio_qscale = config_get_int(params->conf, "audio_global_quality",
         &params->audio_global_quality);
   config_get_int(params->conf, "audio_bit_rate", &params->audio_bit_rate);
   params->video_qscale = config_get_int(params->conf, "video_global_quality",
         &params->video_global_quality);
   config_get_int(params->conf, "video_bit_rate", &params->video_bit_rate);

   if (config_get_array(params->conf, "pix_fmt", pix_fmt, sizeof(pix_fmt)))
   {
      params->out_pix_fmt = av_get_pix_fmt(pix_fmt);
      if (params->out_pix_fmt == PIX_FMT_NONE)
      {
         RARCH_ERR("[FFmpeg] Cannot find pix_fmt \"%s\".\n", pix_fmt);
         return 0;
      }
   }

   if (!config_get_entry_list_head(params->conf, &entry))
      return 1;

   do
   {
      if (strstr(entry.key, "video_") == entry.key)
      {
         const char *key = entry.key + STRLEN_CONST("video_");
         av_dict_set(&params->video_opts, key, entry.value, 0);
      }
      else if (strstr(entry.key, "audio_") == entry.key)
      {
         const char *key = entry.key + STRLEN_CONST("audio_");
         av_dict_set(&params->audio_opts, key, entry.value, 0);
      }
   } while (config_get_entry_list_next(&entry));

   return 1;
}
