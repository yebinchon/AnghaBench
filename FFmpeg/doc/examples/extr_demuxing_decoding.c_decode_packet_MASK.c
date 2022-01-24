#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_11__ {scalar_t__ width; scalar_t__ height; scalar_t__ format; int coded_picture_number; size_t nb_samples; int /*<<< orphan*/ * extended_data; int /*<<< orphan*/  pts; int /*<<< orphan*/  linesize; scalar_t__ data; } ;
struct TYPE_10__ {int size; scalar_t__ stream_index; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 TYPE_5__* audio_dec_ctx ; 
 int /*<<< orphan*/  audio_dst_file ; 
 int /*<<< orphan*/  audio_frame_count ; 
 scalar_t__ audio_stream_idx ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 size_t FUNC3 (scalar_t__) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_5__*,TYPE_2__*,int*,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,...) ; 
 TYPE_2__* frame ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ height ; 
 scalar_t__ pix_fmt ; 
 TYPE_1__ pkt ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ,size_t,...) ; 
 scalar_t__ refcount ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  video_dec_ctx ; 
 size_t video_dst_bufsize ; 
 int /*<<< orphan*/ * video_dst_data ; 
 int /*<<< orphan*/  video_dst_file ; 
 int /*<<< orphan*/  video_dst_linesize ; 
 int /*<<< orphan*/  video_frame_count ; 
 scalar_t__ video_stream_idx ; 
 scalar_t__ width ; 

__attribute__((used)) static int FUNC12(int *got_frame, int cached)
{
    int ret = 0;
    int decoded = pkt.size;

    *got_frame = 0;

    if (pkt.stream_index == video_stream_idx) {
        /* decode video frame */
        ret = FUNC8(video_dec_ctx, frame, got_frame, &pkt);
        if (ret < 0) {
            FUNC9(stderr, "Error decoding video frame (%s)\n", FUNC1(ret));
            return ret;
        }

        if (*got_frame) {

            if (frame->width != width || frame->height != height ||
                frame->format != pix_fmt) {
                /* To handle this change, one could call av_image_alloc again and
                 * decode the following frames into another rawvideo file. */
                FUNC9(stderr, "Error: Width, height and pixel format have to be "
                        "constant in a rawvideo file, but the width, height or "
                        "pixel format of the input video changed:\n"
                        "old: width = %s, height = %ld, format = %s\n"
                        "new: width = %ld, height = %ld, format = %s\n",
                        width, height, FUNC4(pix_fmt),
                        frame->width, frame->height,
                        FUNC4(frame->format));
                return -1;
            }

            FUNC11("video_frame%s n:%d coded_n:%d\n",
                   cached ? "(cached)" : "",
                   video_frame_count++, frame->coded_picture_number);

            /* copy decoded frame to destination buffer:
             * this is required since rawvideo expects non aligned data */
            FUNC5(video_dst_data, video_dst_linesize,
                          (const uint8_t **)(frame->data), frame->linesize,
                          pix_fmt, width, height);

            /* write to rawvideo file */
            FUNC10(video_dst_data[0], 1, video_dst_bufsize, video_dst_file);
        }
    } else if (pkt.stream_index == audio_stream_idx) {
        /* decode audio frame */
        ret = FUNC7(audio_dec_ctx, frame, got_frame, &pkt);
        if (ret < 0) {
            FUNC9(stderr, "Error decoding audio frame (%s)\n", FUNC1(ret));
            return ret;
        }
        /* Some audio decoders decode only part of the packet, and have to be
         * called again with the remainder of the packet data.
         * Sample: fate-suite/lossless-audio/luckynight-partial.shn
         * Also, some decoders might over-read the packet. */
        decoded = FUNC0(ret, pkt.size);

        if (*got_frame) {
            size_t unpadded_linesize = frame->nb_samples * FUNC3(frame->format);
            FUNC11("audio_frame%s n:%d nb_samples:%d pts:%s\n",
                   cached ? "(cached)" : "",
                   audio_frame_count++, frame->nb_samples,
                   FUNC6(frame->pts, &audio_dec_ctx->time_base));

            /* Write the raw audio data samples of the first plane. This works
             * fine for packed formats (e.g. AV_SAMPLE_FMT_S16). However,
             * most audio decoders output planar audio, which uses a separate
             * plane of audio samples for each channel (e.g. AV_SAMPLE_FMT_S16P).
             * In other words, this code will write only the first audio channel
             * in these cases.
             * You should use libswresample or libavfilter to convert the frame
             * to packed data. */
            FUNC10(frame->extended_data[0], 1, unpadded_linesize, audio_dst_file);
        }
    }

    /* If we use frame reference counting, we own the data and need
     * to de-reference it when we don't use it anymore */
    if (*got_frame && refcount)
        FUNC2(frame);

    return decoded;
}