#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_19__ {scalar_t__* streams; } ;
struct TYPE_18__ {int width; int height; int sample_fmt; int channels; int sample_rate; int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_17__ {scalar_t__ size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* audio_dec_ctx ; 
 scalar_t__ audio_dst_file ; 
 char* audio_dst_filename ; 
 scalar_t__ audio_stream ; 
 size_t audio_stream_idx ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_5__*,TYPE_1__*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__**) ; 
 scalar_t__ FUNC15 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_5__**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int*,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 TYPE_5__* fmt_ctx ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  frame ; 
 int FUNC22 (char const**,int) ; 
 int height ; 
 scalar_t__ FUNC23 (size_t*,TYPE_2__**,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pix_fmt ; 
 TYPE_1__ pkt ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int refcount ; 
 char* src_filename ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 TYPE_2__* video_dec_ctx ; 
 int video_dst_bufsize ; 
 int /*<<< orphan*/ * video_dst_data ; 
 scalar_t__ video_dst_file ; 
 char* video_dst_filename ; 
 int /*<<< orphan*/  video_dst_linesize ; 
 scalar_t__ video_stream ; 
 size_t video_stream_idx ; 
 int width ; 

int FUNC26 (int argc, char **argv)
{
    int ret = 0, got_frame;

    if (argc != 4 && argc != 5) {
        FUNC21(stderr, "usage: %s [-refcount] input_file video_output_file audio_output_file\n"
                "API example program to show how to read frames from an input file.\n"
                "This program reads frames from a file, decodes them, and writes decoded\n"
                "video frames to a rawvideo file named video_output_file, and decoded\n"
                "audio frames to a rawaudio file named audio_output_file.\n\n"
                "If the -refcount option is specified, the program use the\n"
                "reference counting frame system which allows keeping a copy of\n"
                "the data for longer than one decode call.\n"
                "\n", argv[0]);
        FUNC18(1);
    }
    if (argc == 5 && !FUNC25(argv[1], "-refcount")) {
        refcount = 1;
        argv++;
    }
    src_filename = argv[1];
    video_dst_filename = argv[2];
    audio_dst_filename = argv[3];

    /* open input file, and allocate format context */
    if (FUNC16(&fmt_ctx, src_filename, NULL, NULL) < 0) {
        FUNC21(stderr, "Could not open source file %s\n", src_filename);
        FUNC18(1);
    }

    /* retrieve stream information */
    if (FUNC15(fmt_ctx, NULL) < 0) {
        FUNC21(stderr, "Could not find stream information\n");
        FUNC18(1);
    }

    if (FUNC23(&video_stream_idx, &video_dec_ctx, fmt_ctx, AVMEDIA_TYPE_VIDEO) >= 0) {
        video_stream = fmt_ctx->streams[video_stream_idx];

        video_dst_file = FUNC20(video_dst_filename, "wb");
        if (!video_dst_file) {
            FUNC21(stderr, "Could not open destination file %s\n", video_dst_filename);
            ret = 1;
            goto end;
        }

        /* allocate image where the decoded image will be put */
        width = video_dec_ctx->width;
        height = video_dec_ctx->height;
        pix_fmt = video_dec_ctx->pix_fmt;
        ret = FUNC8(video_dst_data, video_dst_linesize,
                             width, height, pix_fmt, 1);
        if (ret < 0) {
            FUNC21(stderr, "Could not allocate raw video buffer\n");
            goto end;
        }
        video_dst_bufsize = ret;
    }

    if (FUNC23(&audio_stream_idx, &audio_dec_ctx, fmt_ctx, AVMEDIA_TYPE_AUDIO) >= 0) {
        audio_stream = fmt_ctx->streams[audio_stream_idx];
        audio_dst_file = FUNC20(audio_dst_filename, "wb");
        if (!audio_dst_file) {
            FUNC21(stderr, "Could not open destination file %s\n", audio_dst_filename);
            ret = 1;
            goto end;
        }
    }

    /* dump input information to stderr */
    FUNC1(fmt_ctx, 0, src_filename, 0);

    if (!audio_stream && !video_stream) {
        FUNC21(stderr, "Could not find audio or video stream in the input, aborting\n");
        ret = 1;
        goto end;
    }

    frame = FUNC2();
    if (!frame) {
        FUNC21(stderr, "Could not allocate frame\n");
        ret = FUNC0(ENOMEM);
        goto end;
    }

    /* initialize packet, set data to NULL, let the demuxer fill it */
    FUNC9(&pkt);
    pkt.data = NULL;
    pkt.size = 0;

    if (video_stream)
        FUNC24("Demuxing video from file '%s' into '%s'\n", src_filename, video_dst_filename);
    if (audio_stream)
        FUNC24("Demuxing audio from file '%s' into '%s'\n", src_filename, audio_dst_filename);

    /* read frames from the file */
    while (FUNC11(fmt_ctx, &pkt) >= 0) {
        AVPacket orig_pkt = pkt;
        do {
            ret = FUNC17(&got_frame, 0);
            if (ret < 0)
                break;
            pkt.data += ret;
            pkt.size -= ret;
        } while (pkt.size > 0);
        FUNC10(&orig_pkt);
    }

    /* flush cached frames */
    pkt.data = NULL;
    pkt.size = 0;
    do {
        FUNC17(&got_frame, 1);
    } while (got_frame);

    FUNC24("Demuxing succeeded.\n");

    if (video_stream) {
        FUNC24("Play the output video file with the command:\n"
               "ffplay -f rawvideo -pix_fmt %s -video_size %dx%d %s\n",
               FUNC6(pix_fmt), width, height,
               video_dst_filename);
    }

    if (audio_stream) {
        enum AVSampleFormat sfmt = audio_dec_ctx->sample_fmt;
        int n_channels = audio_dec_ctx->channels;
        const char *fmt;

        if (FUNC12(sfmt)) {
            const char *packed = FUNC7(sfmt);
            FUNC24("Warning: the sample format the decoder produced is planar "
                   "(%s). This example will output the first channel only.\n",
                   packed ? packed : "?");
            sfmt = FUNC5(sfmt);
            n_channels = 1;
        }

        if ((ret = FUNC22(&fmt, sfmt)) < 0)
            goto end;

        FUNC24("Play the output audio file with the command:\n"
               "ffplay -f %s -ac %d -ar %d %s\n",
               fmt, n_channels, audio_dec_ctx->sample_rate,
               audio_dst_filename);
    }

end:
    FUNC13(&video_dec_ctx);
    FUNC13(&audio_dec_ctx);
    FUNC14(&fmt_ctx);
    if (video_dst_file)
        FUNC19(video_dst_file);
    if (audio_dst_file)
        FUNC19(audio_dst_file);
    FUNC3(&frame);
    FUNC4(video_dst_data[0]);

    return ret < 0;
}