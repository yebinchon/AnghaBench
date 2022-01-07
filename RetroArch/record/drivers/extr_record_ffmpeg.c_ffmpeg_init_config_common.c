
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ff_config_param {int frame_drop_ratio; int audio_enable; int audio_global_quality; int scale_factor; int format; int audio_opts; int video_opts; int acodec; int vcodec; void* out_pix_fmt; int threads; } ;
struct TYPE_6__ {scalar_t__ video_record_scale_factor; scalar_t__ video_stream_scale_factor; scalar_t__ streaming_mode; int video_record_threads; } ;
struct TYPE_5__ {int video_gpu_record; } ;
struct TYPE_7__ {TYPE_2__ uints; TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;


 void* PIX_FMT_BGR24 ;
 void* PIX_FMT_RGB24 ;
 void* PIX_FMT_RGB8 ;
 void* PIX_FMT_YUV420P ;
 scalar_t__ STREAMING_MODE_TWITCH ;
 scalar_t__ STREAMING_MODE_YOUTUBE ;
 int av_dict_set (int *,char*,char*,int ) ;
 TYPE_3__* config_get_ptr () ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static bool ffmpeg_init_config_common(struct ff_config_param *params, unsigned preset)
{
   settings_t *settings = config_get_ptr();

   switch (preset)
   {
      case 135:
      case 130:
         params->threads = settings->uints.video_record_threads;
         params->frame_drop_ratio = 1;
         params->audio_enable = 1;
         params->audio_global_quality = 75;
         params->out_pix_fmt = PIX_FMT_YUV420P;

         strlcpy(params->vcodec, "libx264", sizeof(params->vcodec));
         strlcpy(params->acodec, "aac", sizeof(params->acodec));

         av_dict_set(&params->video_opts, "preset", "ultrafast", 0);
         av_dict_set(&params->video_opts, "tune", "film", 0);
         av_dict_set(&params->video_opts, "crf", "35", 0);
         av_dict_set(&params->audio_opts, "audio_global_quality", "75", 0);
         break;
      case 134:
      case 129:
         params->threads = settings->uints.video_record_threads;
         params->frame_drop_ratio = 1;
         params->audio_enable = 1;
         params->audio_global_quality = 75;
         params->out_pix_fmt = PIX_FMT_YUV420P;

         strlcpy(params->vcodec, "libx264", sizeof(params->vcodec));
         strlcpy(params->acodec, "aac", sizeof(params->acodec));

         av_dict_set(&params->video_opts, "preset", "superfast", 0);
         av_dict_set(&params->video_opts, "tune", "film", 0);
         av_dict_set(&params->video_opts, "crf", "25", 0);
         av_dict_set(&params->audio_opts, "audio_global_quality", "75", 0);
         break;
      case 137:
      case 131:
         params->threads = settings->uints.video_record_threads;
         params->frame_drop_ratio = 1;
         params->audio_enable = 1;
         params->audio_global_quality = 100;
         params->out_pix_fmt = PIX_FMT_YUV420P;

         strlcpy(params->vcodec, "libx264", sizeof(params->vcodec));
         strlcpy(params->acodec, "aac", sizeof(params->acodec));

         av_dict_set(&params->video_opts, "preset", "superfast", 0);
         av_dict_set(&params->video_opts, "tune", "film", 0);
         av_dict_set(&params->video_opts, "crf", "15", 0);
         av_dict_set(&params->audio_opts, "audio_global_quality", "100", 0);
         break;
      case 136:
         params->threads = settings->uints.video_record_threads;
         params->frame_drop_ratio = 1;
         params->audio_enable = 1;
         params->audio_global_quality = 80;
         params->out_pix_fmt = PIX_FMT_BGR24;

         strlcpy(params->vcodec, "libx264rgb", sizeof(params->vcodec));
         strlcpy(params->acodec, "flac", sizeof(params->acodec));

         av_dict_set(&params->video_opts, "qp", "0", 0);
         av_dict_set(&params->audio_opts, "audio_global_quality", "100", 0);
         break;
      case 133:
         params->threads = settings->uints.video_record_threads;
         params->frame_drop_ratio = 1;
         params->audio_enable = 1;
         params->audio_global_quality = 50;
         params->out_pix_fmt = PIX_FMT_YUV420P;

         strlcpy(params->vcodec, "libvpx", sizeof(params->vcodec));
         strlcpy(params->acodec, "libopus", sizeof(params->acodec));

         av_dict_set(&params->video_opts, "deadline", "realtime", 0);
         av_dict_set(&params->video_opts, "crf", "14", 0);
         av_dict_set(&params->audio_opts, "audio_global_quality", "50", 0);
         break;
      case 132:
         params->threads = settings->uints.video_record_threads;
         params->frame_drop_ratio = 1;
         params->audio_enable = 1;
         params->audio_global_quality = 75;
         params->out_pix_fmt = PIX_FMT_YUV420P;

         strlcpy(params->vcodec, "libvpx", sizeof(params->vcodec));
         strlcpy(params->acodec, "libopus", sizeof(params->acodec));

         av_dict_set(&params->video_opts, "deadline", "realtime", 0);
         av_dict_set(&params->video_opts, "crf", "4", 0);
         av_dict_set(&params->audio_opts, "audio_global_quality", "75", 0);
         break;
      case 138:
         params->threads = settings->uints.video_record_threads;
         params->frame_drop_ratio = 4;
         params->audio_enable = 0;
         params->audio_global_quality = 0;
         params->out_pix_fmt = PIX_FMT_RGB8;

         strlcpy(params->vcodec, "gif", sizeof(params->vcodec));
         strlcpy(params->acodec, "", sizeof(params->acodec));

         av_dict_set(&params->video_opts, "framerate", "30", 0);
         av_dict_set(&params->audio_opts, "audio_global_quality", "0", 0);
         break;
      case 139:
         params->threads = settings->uints.video_record_threads;
         params->frame_drop_ratio = 1;
         params->audio_enable = 0;
         params->audio_global_quality = 0;
         params->out_pix_fmt = PIX_FMT_RGB24;

         strlcpy(params->vcodec, "apng", sizeof(params->vcodec));
         strlcpy(params->acodec, "", sizeof(params->acodec));

         av_dict_set(&params->video_opts, "pred", "avg", 0);
         av_dict_set(&params->audio_opts, "audio_global_quality", "0", 0);
         break;
      case 128:
         params->threads = settings->uints.video_record_threads;
         params->frame_drop_ratio = 1;
         params->audio_enable = 1;
         params->audio_global_quality = 50;
         params->out_pix_fmt = PIX_FMT_YUV420P;

         strlcpy(params->vcodec, "libx264", sizeof(params->vcodec));
         strlcpy(params->acodec, "aac", sizeof(params->acodec));

         av_dict_set(&params->video_opts, "preset", "ultrafast", 0);
         av_dict_set(&params->video_opts, "tune", "zerolatency", 0);
         av_dict_set(&params->video_opts, "crf", "20", 0);
         av_dict_set(&params->audio_opts, "audio_global_quality", "50", 0);
         break;
      default:
         break;
   }

   if (preset <= 136)
   {
      if (!settings->bools.video_gpu_record)
         params->scale_factor = settings->uints.video_record_scale_factor > 0 ?
            settings->uints.video_record_scale_factor : 1;
      else
         params->scale_factor = 1;
      strlcpy(params->format, "matroska", sizeof(params->format));
   }
   else if (preset >= 133 && preset < 138)
   {
      if (!settings->bools.video_gpu_record)
         params->scale_factor = settings->uints.video_record_scale_factor > 0 ?
            settings->uints.video_record_scale_factor : 1;
      else
         params->scale_factor = 1;
      strlcpy(params->format, "webm", sizeof(params->format));
   }
   else if (preset >= 138 && preset < 139)
   {
      if (!settings->bools.video_gpu_record)
         params->scale_factor = settings->uints.video_record_scale_factor > 0 ?
            settings->uints.video_record_scale_factor : 1;
      else
         params->scale_factor = 1;
      strlcpy(params->format, "gif", sizeof(params->format));
   }
   else if (preset < 130)
   {
      params->scale_factor = 1;
      strlcpy(params->format, "apng", sizeof(params->format));
   }
   else if (preset <= 131)
   {
      if (!settings->bools.video_gpu_record)
         params->scale_factor = settings->uints.video_stream_scale_factor > 0 ?
            settings->uints.video_stream_scale_factor : 1;
      else
         params->scale_factor = 1;
      if (settings->uints.streaming_mode == STREAMING_MODE_YOUTUBE || settings->uints.streaming_mode == STREAMING_MODE_TWITCH)
         strlcpy(params->format, "flv", sizeof(params->format));
      else
         strlcpy(params->format, "mpegts", sizeof(params->format));
   }
   else if (preset == 128)
   {
      params->scale_factor = 1;
      strlcpy(params->format, "mpegts", sizeof(params->format));
   }

   return 1;
}
