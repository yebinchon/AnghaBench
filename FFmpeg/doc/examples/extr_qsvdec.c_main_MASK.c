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

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_23__ {int /*<<< orphan*/  get_format; TYPE_2__* opaque; scalar_t__ extradata_size; int /*<<< orphan*/  extradata; scalar_t__ codec_id; } ;
struct TYPE_22__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_21__ {scalar_t__ stream_index; scalar_t__ size; int /*<<< orphan*/ * data; int /*<<< orphan*/  member_0; } ;
struct TYPE_20__ {scalar_t__ index; TYPE_1__* codecpar; int /*<<< orphan*/  discard; } ;
struct TYPE_19__ {int /*<<< orphan*/  hw_device_ref; int /*<<< orphan*/ * member_0; } ;
struct TYPE_18__ {scalar_t__ codec_id; scalar_t__ extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_2__ DecodeContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AVDISCARD_ALL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 scalar_t__ AV_CODEC_ID_H264 ; 
 int /*<<< orphan*/  AV_HWDEVICE_TYPE_QSV ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 
 TYPE_6__* FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__**) ; 
 int FUNC12 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__**) ; 
 int FUNC14 (TYPE_5__**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  get_format ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC20(int argc, char **argv)
{
    AVFormatContext *input_ctx = NULL;
    AVStream *video_st = NULL;
    AVCodecContext *decoder_ctx = NULL;
    const AVCodec *decoder;

    AVPacket pkt = { 0 };
    AVFrame *frame = NULL, *sw_frame = NULL;

    DecodeContext decode = { NULL };

    AVIOContext *output_ctx = NULL;

    int ret, i;

    if (argc < 3) {
        FUNC18(stderr, "Usage: %s <input file> <output file>\n", argv[0]);
        return 1;
    }

    /* open the input file */
    ret = FUNC14(&input_ctx, argv[1], NULL, NULL);
    if (ret < 0) {
        FUNC18(stderr, "Cannot open input file '%s': ", argv[1]);
        goto finish;
    }

    /* find the first H.264 video stream */
    for (i = 0; i < input_ctx->nb_streams; i++) {
        AVStream *st = input_ctx->streams[i];

        if (st->codecpar->codec_id == AV_CODEC_ID_H264 && !video_st)
            video_st = st;
        else
            st->discard = AVDISCARD_ALL;
    }
    if (!video_st) {
        FUNC18(stderr, "No H.264 video stream in the input file\n");
        goto finish;
    }

    /* open the hardware device */
    ret = FUNC4(&decode.hw_device_ref, AV_HWDEVICE_TYPE_QSV,
                                 "auto", NULL, 0);
    if (ret < 0) {
        FUNC18(stderr, "Cannot open the hardware device\n");
        goto finish;
    }

    /* initialize the decoder */
    decoder = FUNC10("h264_qsv");
    if (!decoder) {
        FUNC18(stderr, "The QSV decoder is not present in libavcodec\n");
        goto finish;
    }

    decoder_ctx = FUNC9(decoder);
    if (!decoder_ctx) {
        ret = FUNC0(ENOMEM);
        goto finish;
    }
    decoder_ctx->codec_id = AV_CODEC_ID_H264;
    if (video_st->codecpar->extradata_size) {
        decoder_ctx->extradata = FUNC5(video_st->codecpar->extradata_size +
                                            AV_INPUT_BUFFER_PADDING_SIZE);
        if (!decoder_ctx->extradata) {
            ret = FUNC0(ENOMEM);
            goto finish;
        }
        FUNC19(decoder_ctx->extradata, video_st->codecpar->extradata,
               video_st->codecpar->extradata_size);
        decoder_ctx->extradata_size = video_st->codecpar->extradata_size;
    }

    decoder_ctx->opaque      = &decode;
    decoder_ctx->get_format  = get_format;

    ret = FUNC12(decoder_ctx, NULL, NULL);
    if (ret < 0) {
        FUNC18(stderr, "Error opening the decoder: ");
        goto finish;
    }

    /* open the output stream */
    ret = FUNC16(&output_ctx, argv[2], AVIO_FLAG_WRITE);
    if (ret < 0) {
        FUNC18(stderr, "Error opening the output context: ");
        goto finish;
    }

    frame    = FUNC2();
    sw_frame = FUNC2();
    if (!frame || !sw_frame) {
        ret = FUNC0(ENOMEM);
        goto finish;
    }

    /* actual decoding */
    while (ret >= 0) {
        ret = FUNC7(input_ctx, &pkt);
        if (ret < 0)
            break;

        if (pkt.stream_index == video_st->index)
            ret = FUNC17(&decode, decoder_ctx, frame, sw_frame, &pkt, output_ctx);

        FUNC6(&pkt);
    }

    /* flush the decoder */
    pkt.data = NULL;
    pkt.size = 0;
    ret = FUNC17(&decode, decoder_ctx, frame, sw_frame, &pkt, output_ctx);

finish:
    if (ret < 0) {
        char buf[1024];
        FUNC8(ret, buf, sizeof(buf));
        FUNC18(stderr, "%s\n", buf);
    }

    FUNC13(&input_ctx);

    FUNC3(&frame);
    FUNC3(&sw_frame);

    FUNC11(&decoder_ctx);

    FUNC1(&decode.hw_device_ref);

    FUNC15(output_ctx);

    return ret;
}