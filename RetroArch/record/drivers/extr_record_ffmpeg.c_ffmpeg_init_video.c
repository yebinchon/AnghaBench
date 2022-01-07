
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct record_params {int pix_fmt; float out_width; float out_height; double fps; double aspect_ratio; } ;
struct TYPE_10__ {void* in_fmt; void* out_fmt; } ;
struct ff_video_info {scalar_t__ pix_fmt; int use_sws; int in_pix_fmt; int pix_size; int outbuf_size; TYPE_9__* conv_frame; int * conv_frame_buf; scalar_t__ frame_drop_ratio; int * outbuf; TYPE_7__* codec; TYPE_1__ scaler; int * encoder; } ;
struct ff_config_param {char* vcodec; scalar_t__ out_pix_fmt; float scale_factor; scalar_t__ frame_drop_ratio; scalar_t__ video_opts; scalar_t__ video_bit_rate; int video_global_quality; scalar_t__ video_qscale; int threads; } ;
struct TYPE_13__ {TYPE_3__* ctx; } ;
struct TYPE_14__ {TYPE_4__ muxer; struct record_params params; struct ff_video_info video; struct ff_config_param config; } ;
typedef TYPE_5__ ffmpeg_t ;
struct TYPE_16__ {double width; double height; int format; } ;
struct TYPE_15__ {float width; float height; int pix_fmt; int flags; scalar_t__ bit_rate; int global_quality; int thread_count; void* sample_aspect_ratio; void* time_base; int codec_type; } ;
struct TYPE_12__ {TYPE_2__* oformat; } ;
struct TYPE_11__ {int flags; } ;
typedef int AVPicture ;
typedef int AVCodec ;


 int AVFMT_GLOBALHEADER ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_FLAG_GLOBAL_HEADER ;
 int AV_CODEC_FLAG_QSCALE ;




 scalar_t__ PIX_FMT_NONE ;

 int PIX_FMT_RGB565 ;
 int RARCH_ERR (char*,char*) ;
 void* SCALER_FMT_ARGB8888 ;
 void* SCALER_FMT_BGR24 ;
 void* SCALER_FMT_RGB565 ;
 void* av_d2q (double,int) ;
 int av_dict_set (scalar_t__*,char*,char*,int ) ;
 TYPE_9__* av_frame_alloc () ;
 scalar_t__ av_malloc (size_t) ;
 TYPE_7__* avcodec_alloc_context3 (int *) ;
 int * avcodec_find_encoder_by_name (char*) ;
 scalar_t__ avcodec_open2 (TYPE_7__*,int *,scalar_t__*) ;
 int avpicture_fill (int *,int *,int,double,double) ;
 size_t avpicture_get_size (int,double,double) ;

__attribute__((used)) static bool ffmpeg_init_video(ffmpeg_t *handle)
{
   size_t size;
   struct ff_config_param *params = &handle->config;
   struct ff_video_info *video = &handle->video;
   struct record_params *param = &handle->params;
   AVCodec *codec = ((void*)0);

   if (*params->vcodec)
      codec = avcodec_find_encoder_by_name(params->vcodec);
   else
   {

      av_dict_set(&params->video_opts, "qp", "0", 0);
      codec = avcodec_find_encoder_by_name("libx264rgb");
   }

   if (!codec)
   {
      RARCH_ERR("[FFmpeg]: Cannot find vcodec %s.\n",
            *params->vcodec ? params->vcodec : "libx264rgb");
      return 0;
   }

   video->encoder = codec;
   if (params->out_pix_fmt != PIX_FMT_NONE)
   {
      video->pix_fmt = params->out_pix_fmt;
      if (video->pix_fmt != 129 && video->pix_fmt != 128)
         video->use_sws = 1;

      switch (video->pix_fmt)
      {
         case 129:
            video->scaler.out_fmt = SCALER_FMT_BGR24;
            break;

         case 128:
            video->scaler.out_fmt = SCALER_FMT_ARGB8888;
            break;

         default:
            break;
      }
   }
   else
   {
      video->pix_fmt = 129;
      video->scaler.out_fmt = SCALER_FMT_BGR24;
   }

   switch (param->pix_fmt)
   {
      case 130:
         video->scaler.in_fmt = SCALER_FMT_RGB565;
         video->in_pix_fmt = PIX_FMT_RGB565;
         video->pix_size = 2;
         break;

      case 131:
         video->scaler.in_fmt = SCALER_FMT_BGR24;
         video->in_pix_fmt = 129;
         video->pix_size = 3;
         break;

      case 132:
         video->scaler.in_fmt = SCALER_FMT_ARGB8888;
         video->in_pix_fmt = 128;
         video->pix_size = 4;
         break;

      default:
         return 0;
   }

   video->codec = avcodec_alloc_context3(codec);




   param->out_width = (float)param->out_width * params->scale_factor;
   param->out_height = (float)param->out_height * params->scale_factor;

   video->codec->codec_type = AVMEDIA_TYPE_VIDEO;
   video->codec->width = param->out_width;
   video->codec->height = param->out_height;
   video->codec->time_base = av_d2q((double)
         params->frame_drop_ratio /param->fps, 1000000);
   video->codec->sample_aspect_ratio = av_d2q(
         param->aspect_ratio * param->out_height / param->out_width, 255);
   video->codec->pix_fmt = video->pix_fmt;

   video->codec->thread_count = params->threads;

   if (params->video_qscale)
   {
      video->codec->flags |= AV_CODEC_FLAG_QSCALE;
      video->codec->global_quality = params->video_global_quality;
   }
   else if (params->video_bit_rate)
      video->codec->bit_rate = params->video_bit_rate;

   if (handle->muxer.ctx->oformat->flags & AVFMT_GLOBALHEADER)
      video->codec->flags |= AV_CODEC_FLAG_GLOBAL_HEADER;

   if (avcodec_open2(video->codec, codec, params->video_opts ?
            &params->video_opts : ((void*)0)) != 0)
      return 0;



   video->outbuf_size = 1 << 23;
   video->outbuf = (uint8_t*)av_malloc(video->outbuf_size);

   video->frame_drop_ratio = params->frame_drop_ratio;

   size = avpicture_get_size(video->pix_fmt, param->out_width,
         param->out_height);
   video->conv_frame_buf = (uint8_t*)av_malloc(size);
   video->conv_frame = av_frame_alloc();

   avpicture_fill((AVPicture*)video->conv_frame, video->conv_frame_buf,
         video->pix_fmt, param->out_width, param->out_height);

   video->conv_frame->width = param->out_width;
   video->conv_frame->height = param->out_height;
   video->conv_frame->format = video->pix_fmt;

   return 1;
}
