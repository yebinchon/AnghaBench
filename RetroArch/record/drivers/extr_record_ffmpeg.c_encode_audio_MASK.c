#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_20__ {TYPE_2__* astream; } ;
struct TYPE_18__ {TYPE_11__* codec; int /*<<< orphan*/ * buffer; scalar_t__ planar_buf; scalar_t__ is_planar; int /*<<< orphan*/  frames_in_buffer; int /*<<< orphan*/  frame_cnt; scalar_t__ outbuf_size; int /*<<< orphan*/  outbuf; } ;
struct TYPE_21__ {TYPE_3__ muxer; TYPE_1__ audio; } ;
typedef  TYPE_4__ ffmpeg_t ;
struct TYPE_23__ {int /*<<< orphan*/  pts; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  format; int /*<<< orphan*/  nb_samples; } ;
struct TYPE_22__ {scalar_t__ pts; scalar_t__ dts; int /*<<< orphan*/  stream_index; scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_19__ {int /*<<< orphan*/  index; int /*<<< orphan*/  time_base; } ;
struct TYPE_17__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  channels; int /*<<< orphan*/  channel_layout; } ;
typedef  TYPE_5__ AVPacket ;
typedef  TYPE_6__ AVFrame ;

/* Variables and functions */
 void* AV_NOPTS_VALUE ; 
 TYPE_6__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 void* FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_11__*,TYPE_5__*,TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static bool FUNC8(ffmpeg_t *handle, AVPacket *pkt, bool dry)
{
   AVFrame *frame;
   int samples_size;
   int got_packet = 0;

   FUNC2(pkt);
   pkt->data = handle->audio.outbuf;
   pkt->size = handle->audio.outbuf_size;

   frame = FUNC0();
   if (!frame)
      return false;

   frame->nb_samples     = handle->audio.frames_in_buffer;
   frame->format         = handle->audio.codec->sample_fmt;
   frame->channel_layout = handle->audio.codec->channel_layout;
   frame->pts            = handle->audio.frame_cnt;

   FUNC7(handle);

   samples_size = FUNC4(NULL,
         handle->audio.codec->channels,
         handle->audio.frames_in_buffer,
         handle->audio.codec->sample_fmt, 0);

   FUNC6(frame, handle->audio.codec->channels,
         handle->audio.codec->sample_fmt,
         handle->audio.is_planar ? (uint8_t*)handle->audio.planar_buf :
         handle->audio.buffer,
         samples_size, 0);

   if (FUNC5(handle->audio.codec,
            pkt, dry ? NULL : frame, &got_packet) < 0)
   {
      FUNC1(&frame);
      return false;
   }

   if (!got_packet)
   {
      pkt->size = 0;
      pkt->pts = AV_NOPTS_VALUE;
      pkt->dts = AV_NOPTS_VALUE;
      FUNC1(&frame);
      return true;
   }

   if (pkt->pts != (int64_t)AV_NOPTS_VALUE)
   {
      pkt->pts = FUNC3(pkt->pts,
            handle->audio.codec->time_base,
            handle->muxer.astream->time_base);
   }

   if (pkt->dts != (int64_t)AV_NOPTS_VALUE)
   {
      pkt->dts = FUNC3(pkt->dts,
            handle->audio.codec->time_base,
            handle->muxer.astream->time_base);
   }

   FUNC1(&frame);

   pkt->stream_index = handle->muxer.astream->index;
   return true;
}