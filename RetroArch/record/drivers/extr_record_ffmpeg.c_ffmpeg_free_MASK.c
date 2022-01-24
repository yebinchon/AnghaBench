#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ planar_buf; scalar_t__ fixed_conv; scalar_t__ resample_out; scalar_t__ float_conv; int /*<<< orphan*/ * resampler_data; TYPE_3__* resampler; scalar_t__ buffer; scalar_t__ codec; } ;
struct TYPE_10__ {scalar_t__ audio_opts; scalar_t__ video_opts; scalar_t__ conf; } ;
struct TYPE_9__ {scalar_t__ sws; int /*<<< orphan*/  scaler; scalar_t__ conv_frame_buf; int /*<<< orphan*/  conv_frame; scalar_t__ codec; } ;
struct TYPE_13__ {TYPE_4__ audio; TYPE_2__ config; TYPE_1__ video; } ;
typedef  TYPE_5__ ffmpeg_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void FUNC11(void *data)
{
   ffmpeg_t *handle = (ffmpeg_t*)data;
   if (!handle)
      return;

   FUNC5(handle);
   FUNC6(handle);

   if (handle->audio.codec)
   {
      FUNC3(handle->audio.codec);
      FUNC2(handle->audio.codec);
   }

   FUNC2(handle->audio.buffer);

   if (handle->video.codec)
   {
      FUNC3(handle->video.codec);
      FUNC2(handle->video.codec);
   }

   FUNC1(&handle->video.conv_frame);
   FUNC2(handle->video.conv_frame_buf);

   FUNC8(&handle->video.scaler);

   if (handle->video.sws)
      FUNC10(handle->video.sws);

   if (handle->config.conf)
      FUNC4(handle->config.conf);
   if (handle->config.video_opts)
      FUNC0(&handle->config.video_opts);
   if (handle->config.audio_opts)
      FUNC0(&handle->config.audio_opts);

   if (handle->audio.resampler && handle->audio.resampler_data)
      handle->audio.resampler->free(handle->audio.resampler_data);
   handle->audio.resampler      = NULL;
   handle->audio.resampler_data = NULL;

   FUNC2(handle->audio.float_conv);
   FUNC2(handle->audio.resample_out);
   FUNC2(handle->audio.fixed_conv);
   FUNC2(handle->audio.planar_buf);

   FUNC7(handle);
}