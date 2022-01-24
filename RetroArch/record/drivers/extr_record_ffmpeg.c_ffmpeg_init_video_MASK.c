#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct record_params {int pix_fmt; float out_width; float out_height; double fps; double aspect_ratio; } ;
struct TYPE_10__ {void* in_fmt; void* out_fmt; } ;
struct ff_video_info {scalar_t__ pix_fmt; int use_sws; int in_pix_fmt; int pix_size; int outbuf_size; TYPE_9__* conv_frame; int /*<<< orphan*/ * conv_frame_buf; scalar_t__ frame_drop_ratio; int /*<<< orphan*/ * outbuf; TYPE_7__* codec; TYPE_1__ scaler; int /*<<< orphan*/ * encoder; } ;
struct ff_config_param {char* vcodec; scalar_t__ out_pix_fmt; float scale_factor; scalar_t__ frame_drop_ratio; scalar_t__ video_opts; scalar_t__ video_bit_rate; int /*<<< orphan*/  video_global_quality; scalar_t__ video_qscale; int /*<<< orphan*/  threads; } ;
struct TYPE_13__ {TYPE_3__* ctx; } ;
struct TYPE_14__ {TYPE_4__ muxer; struct record_params params; struct ff_video_info video; struct ff_config_param config; } ;
typedef  TYPE_5__ ffmpeg_t ;
struct TYPE_16__ {double width; double height; int format; } ;
struct TYPE_15__ {float width; float height; int pix_fmt; int /*<<< orphan*/  flags; scalar_t__ bit_rate; int /*<<< orphan*/  global_quality; int /*<<< orphan*/  thread_count; void* sample_aspect_ratio; void* time_base; int /*<<< orphan*/  codec_type; } ;
struct TYPE_12__ {TYPE_2__* oformat; } ;
struct TYPE_11__ {int flags; } ;
typedef  int /*<<< orphan*/  AVPicture ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int AVFMT_GLOBALHEADER ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_FLAG_GLOBAL_HEADER ; 
 int /*<<< orphan*/  AV_CODEC_FLAG_QSCALE ; 
#define  FFEMU_PIX_ARGB8888 132 
#define  FFEMU_PIX_BGR24 131 
#define  FFEMU_PIX_RGB565 130 
#define  PIX_FMT_BGR24 129 
 scalar_t__ PIX_FMT_NONE ; 
#define  PIX_FMT_RGB32 128 
 int PIX_FMT_RGB565 ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 void* SCALER_FMT_ARGB8888 ; 
 void* SCALER_FMT_BGR24 ; 
 void* SCALER_FMT_RGB565 ; 
 void* FUNC1 (double,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC3 () ; 
 scalar_t__ FUNC4 (size_t) ; 
 TYPE_7__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 scalar_t__ FUNC7 (TYPE_7__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,double,double) ; 
 size_t FUNC9 (int,double,double) ; 

__attribute__((used)) static bool FUNC10(ffmpeg_t *handle)
{
   size_t size;
   struct ff_config_param *params  = &handle->config;
   struct ff_video_info *video     = &handle->video;
   struct record_params *param     = &handle->params;
   AVCodec *codec = NULL;

   if (*params->vcodec)
      codec = FUNC6(params->vcodec);
   else
   {
      /* By default, lossless video. */
      FUNC2(&params->video_opts, "qp", "0", 0);
      codec = FUNC6("libx264rgb");
   }

   if (!codec)
   {
      FUNC0("[FFmpeg]: Cannot find vcodec %s.\n",
            *params->vcodec ? params->vcodec : "libx264rgb");
      return false;
   }

   video->encoder = codec;

   /* Don't use swscaler unless format is not something "in-house" scaler
    * supports.
    *
    * libswscale doesn't scale RGB -> RGB correctly (goes via YUV first),
    * and it's non-trivial to fix upstream as it's heavily geared towards YUV.
    * If we're dealing with strange formats or YUV, just use libswscale.
    */
   if (params->out_pix_fmt != PIX_FMT_NONE)
   {
      video->pix_fmt = params->out_pix_fmt;
      if (video->pix_fmt != PIX_FMT_BGR24 && video->pix_fmt != PIX_FMT_RGB32)
         video->use_sws = true;

      switch (video->pix_fmt)
      {
         case PIX_FMT_BGR24:
            video->scaler.out_fmt = SCALER_FMT_BGR24;
            break;

         case PIX_FMT_RGB32:
            video->scaler.out_fmt = SCALER_FMT_ARGB8888;
            break;

         default:
            break;
      }
   }
   else /* Use BGR24 as default out format. */
   {
      video->pix_fmt        = PIX_FMT_BGR24;
      video->scaler.out_fmt = SCALER_FMT_BGR24;
   }

   switch (param->pix_fmt)
   {
      case FFEMU_PIX_RGB565:
         video->scaler.in_fmt = SCALER_FMT_RGB565;
         video->in_pix_fmt    = PIX_FMT_RGB565;
         video->pix_size      = 2;
         break;

      case FFEMU_PIX_BGR24:
         video->scaler.in_fmt = SCALER_FMT_BGR24;
         video->in_pix_fmt    = PIX_FMT_BGR24;
         video->pix_size      = 3;
         break;

      case FFEMU_PIX_ARGB8888:
         video->scaler.in_fmt = SCALER_FMT_ARGB8888;
         video->in_pix_fmt    = PIX_FMT_RGB32;
         video->pix_size      = 4;
         break;

      default:
         return false;
   }

   video->codec = FUNC5(codec);

   /* Useful to set scale_factor to 2 for chroma subsampled formats to
    * maintain full chroma resolution. (Or just use 4:4:4 or RGB ...)
    */
   param->out_width  = (float)param->out_width  * params->scale_factor;
   param->out_height = (float)param->out_height * params->scale_factor;

   video->codec->codec_type          = AVMEDIA_TYPE_VIDEO;
   video->codec->width               = param->out_width;
   video->codec->height              = param->out_height;
   video->codec->time_base           = FUNC1((double)
         params->frame_drop_ratio /param->fps, 1000000); /* Arbitrary big number. */
   video->codec->sample_aspect_ratio = FUNC1(
         param->aspect_ratio * param->out_height / param->out_width, 255);
   video->codec->pix_fmt             = video->pix_fmt;

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

   if (FUNC7(video->codec, codec, params->video_opts ?
            &params->video_opts : NULL) != 0)
      return false;

   /* Allocate a big buffer. ffmpeg API doesn't seem to give us some
    * clues how big this buffer should be. */
   video->outbuf_size = 1 << 23;
   video->outbuf = (uint8_t*)FUNC4(video->outbuf_size);

   video->frame_drop_ratio = params->frame_drop_ratio;

   size = FUNC9(video->pix_fmt, param->out_width,
         param->out_height);
   video->conv_frame_buf = (uint8_t*)FUNC4(size);
   video->conv_frame = FUNC3();

   FUNC8((AVPicture*)video->conv_frame, video->conv_frame_buf,
         video->pix_fmt, param->out_width, param->out_height);

   video->conv_frame->width  = param->out_width;
   video->conv_frame->height = param->out_height;
   video->conv_frame->format = video->pix_fmt;

   return true;
}