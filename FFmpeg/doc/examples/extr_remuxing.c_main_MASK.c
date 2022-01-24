#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {scalar_t__ codec_type; scalar_t__ codec_tag; } ;
struct TYPE_28__ {int nb_streams; int /*<<< orphan*/  pb; TYPE_1__** streams; TYPE_3__* oformat; } ;
struct TYPE_27__ {int flags; } ;
struct TYPE_26__ {size_t stream_index; int pos; int /*<<< orphan*/  duration; void* dts; void* pts; } ;
struct TYPE_25__ {int /*<<< orphan*/  time_base; TYPE_5__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVOutputFormat ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_UNKNOWN ; 
 int AVFMT_NOFILE ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int AV_ROUND_NEAR_INF ; 
 int AV_ROUND_PASS_MINMAX ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int**) ; 
 int FUNC4 (TYPE_4__*,TYPE_2__*) ; 
 int* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int FUNC11 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__**) ; 
 int FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 TYPE_1__* FUNC16 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_4__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC24(int argc, char **argv)
{
    AVOutputFormat *ofmt = NULL;
    AVFormatContext *ifmt_ctx = NULL, *ofmt_ctx = NULL;
    AVPacket pkt;
    const char *in_filename, *out_filename;
    int ret, i;
    int stream_index = 0;
    int *stream_mapping = NULL;
    int stream_mapping_size = 0;

    if (argc < 3) {
        FUNC23("usage: %s input output\n"
               "API example program to remux a media file with libavformat and libavcodec.\n"
               "The output format is guessed according to the file extension.\n"
               "\n", argv[0]);
        return 1;
    }

    in_filename  = argv[1];
    out_filename = argv[2];

    if ((ret = FUNC17(&ifmt_ctx, in_filename, 0, 0)) < 0) {
        FUNC21(stderr, "Could not open input file '%s'", in_filename);
        goto end;
    }

    if ((ret = FUNC14(ifmt_ctx, 0)) < 0) {
        FUNC21(stderr, "Failed to retrieve input stream information");
        goto end;
    }

    FUNC1(ifmt_ctx, 0, in_filename, 0);

    FUNC12(&ofmt_ctx, NULL, NULL, out_filename);
    if (!ofmt_ctx) {
        FUNC21(stderr, "Could not create output context\n");
        ret = AVERROR_UNKNOWN;
        goto end;
    }

    stream_mapping_size = ifmt_ctx->nb_streams;
    stream_mapping = FUNC5(stream_mapping_size, sizeof(*stream_mapping));
    if (!stream_mapping) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    ofmt = ofmt_ctx->oformat;

    for (i = 0; i < ifmt_ctx->nb_streams; i++) {
        AVStream *out_stream;
        AVStream *in_stream = ifmt_ctx->streams[i];
        AVCodecParameters *in_codecpar = in_stream->codecpar;

        if (in_codecpar->codec_type != AVMEDIA_TYPE_AUDIO &&
            in_codecpar->codec_type != AVMEDIA_TYPE_VIDEO &&
            in_codecpar->codec_type != AVMEDIA_TYPE_SUBTITLE) {
            stream_mapping[i] = -1;
            continue;
        }

        stream_mapping[i] = stream_index++;

        out_stream = FUNC16(ofmt_ctx, NULL);
        if (!out_stream) {
            FUNC21(stderr, "Failed allocating output stream\n");
            ret = AVERROR_UNKNOWN;
            goto end;
        }

        ret = FUNC11(out_stream->codecpar, in_codecpar);
        if (ret < 0) {
            FUNC21(stderr, "Failed to copy codec parameters\n");
            goto end;
        }
        out_stream->codecpar->codec_tag = 0;
    }
    FUNC1(ofmt_ctx, 0, out_filename, 1);

    if (!(ofmt->flags & AVFMT_NOFILE)) {
        ret = FUNC20(&ofmt_ctx->pb, out_filename, AVIO_FLAG_WRITE);
        if (ret < 0) {
            FUNC21(stderr, "Could not open output file '%s'", out_filename);
            goto end;
        }
    }

    ret = FUNC18(ofmt_ctx, NULL);
    if (ret < 0) {
        FUNC21(stderr, "Error occurred when opening output file\n");
        goto end;
    }

    while (1) {
        AVStream *in_stream, *out_stream;

        ret = FUNC7(ifmt_ctx, &pkt);
        if (ret < 0)
            break;

        in_stream  = ifmt_ctx->streams[pkt.stream_index];
        if (pkt.stream_index >= stream_mapping_size ||
            stream_mapping[pkt.stream_index] < 0) {
            FUNC6(&pkt);
            continue;
        }

        pkt.stream_index = stream_mapping[pkt.stream_index];
        out_stream = ofmt_ctx->streams[pkt.stream_index];
        FUNC22(ifmt_ctx, &pkt, "in");

        /* copy packet */
        pkt.pts = FUNC9(pkt.pts, in_stream->time_base, out_stream->time_base, AV_ROUND_NEAR_INF|AV_ROUND_PASS_MINMAX);
        pkt.dts = FUNC9(pkt.dts, in_stream->time_base, out_stream->time_base, AV_ROUND_NEAR_INF|AV_ROUND_PASS_MINMAX);
        pkt.duration = FUNC8(pkt.duration, in_stream->time_base, out_stream->time_base);
        pkt.pos = -1;
        FUNC22(ofmt_ctx, &pkt, "out");

        ret = FUNC4(ofmt_ctx, &pkt);
        if (ret < 0) {
            FUNC21(stderr, "Error muxing packet\n");
            break;
        }
        FUNC6(&pkt);
    }

    FUNC10(ofmt_ctx);
end:

    FUNC13(&ifmt_ctx);

    /* close output */
    if (ofmt_ctx && !(ofmt->flags & AVFMT_NOFILE))
        FUNC19(&ofmt_ctx->pb);
    FUNC15(ofmt_ctx);

    FUNC3(&stream_mapping);

    if (ret < 0 && ret != AVERROR_EOF) {
        FUNC21(stderr, "Error occurred: %s\n", FUNC2(ret));
        return 1;
    }

    return 0;
}