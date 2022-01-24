#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_9__* ctx; TYPE_7__* astream; TYPE_7__* vstream; } ;
struct TYPE_14__ {TYPE_4__* codec; int /*<<< orphan*/  encoder; } ;
struct TYPE_13__ {scalar_t__ audio_enable; } ;
struct TYPE_12__ {TYPE_4__* codec; int /*<<< orphan*/  encoder; } ;
struct TYPE_17__ {TYPE_5__ muxer; TYPE_3__ audio; TYPE_2__ config; TYPE_1__ video; } ;
typedef  TYPE_6__ ffmpeg_t ;
struct TYPE_19__ {int /*<<< orphan*/  metadata; } ;
struct TYPE_18__ {TYPE_4__* codec; int /*<<< orphan*/  time_base; int /*<<< orphan*/  sample_aspect_ratio; } ;
struct TYPE_15__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  sample_aspect_ratio; } ;
typedef  TYPE_7__ AVStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC1 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_9__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(ffmpeg_t *handle)
{
   AVStream *stream = FUNC1(handle->muxer.ctx,
         handle->video.encoder);

   stream->codec = handle->video.codec;
   stream->time_base = stream->codec->time_base;
   handle->muxer.vstream = stream;
   handle->muxer.vstream->sample_aspect_ratio =
      handle->video.codec->sample_aspect_ratio;

   if (handle->config.audio_enable)
   {
      stream = FUNC1(handle->muxer.ctx,
            handle->audio.encoder);
      stream->codec = handle->audio.codec;
      stream->time_base = stream->codec->time_base;
      handle->muxer.astream = stream;
   }

   FUNC0(&handle->muxer.ctx->metadata, "title",
         "RetroArch Video Dump", 0);

   return FUNC2(handle->muxer.ctx, NULL) >= 0;
}