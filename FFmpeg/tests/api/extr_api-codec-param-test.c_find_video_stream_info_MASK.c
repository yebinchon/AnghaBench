#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ codec_type; } ;
struct TYPE_16__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_15__ {size_t stream_index; } ;
struct TYPE_14__ {scalar_t__ codec_info_nb_frames; TYPE_4__* codec; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *fmt_ctx, int decode)
{
    int ret = 0;
    int i, done = 0;
    AVPacket pkt;

    FUNC0(&pkt);

    while (!done) {
        AVCodecContext *codec_ctx = NULL;
        AVStream *st;

        if ((ret = FUNC3(fmt_ctx, &pkt)) < 0) {
            FUNC1(fmt_ctx, AV_LOG_ERROR, "Failed to read frame\n");
            goto end;
        }

        st = fmt_ctx->streams[pkt.stream_index];
        codec_ctx = st->codec;

        /* Writing to AVStream.codec_info_nb_frames must not be done by
         * user applications. It is done here for testing purposing as
         * find_video_stream_info tries to mimic avformat_find_stream_info
         * which writes to this field.
         * */
        if (codec_ctx->codec_type != AVMEDIA_TYPE_VIDEO ||
            st->codec_info_nb_frames++ > 0) {
            FUNC2(&pkt);
            continue;
        }

        ret = FUNC5(codec_ctx, &pkt, decode);
        if (ret < 0) {
            FUNC1(fmt_ctx, AV_LOG_ERROR, "Failed to decode video frame\n");
            goto end;
        }

        FUNC2(&pkt);

        /* check if all video streams have demuxed a packet */
        done = 1;
        for (i = 0; i < fmt_ctx->nb_streams; i++) {
            st = fmt_ctx->streams[i];
            codec_ctx = st->codec;

            if (codec_ctx->codec_type != AVMEDIA_TYPE_VIDEO)
                continue;

            done &= st->codec_info_nb_frames > 0;
        }
    }

end:
    FUNC2(&pkt);

    /* close all codecs opened in try_decode_video_frame */
    for (i = 0; i < fmt_ctx->nb_streams; i++) {
        AVStream *st = fmt_ctx->streams[i];
        FUNC4(st->codec);
    }

    return ret < 0;
}