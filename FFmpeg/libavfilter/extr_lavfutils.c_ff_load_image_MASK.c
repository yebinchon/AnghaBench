#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_16__ {int /*<<< orphan*/  codec_id; } ;
struct TYPE_15__ {TYPE_1__** streams; } ;
struct TYPE_14__ {int width; int height; int format; int /*<<< orphan*/  linesize; scalar_t__ data; } ;
struct TYPE_13__ {TYPE_4__* codecpar; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVInputFormat ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_4__ AVCodecParameters ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 int FUNC6 (int /*<<< orphan*/ **,int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__**) ; 
 int FUNC19 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_3__**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC21(uint8_t *data[4], int linesize[4],
                  int *w, int *h, enum AVPixelFormat *pix_fmt,
                  const char *filename, void *log_ctx)
{
    AVInputFormat *iformat = NULL;
    AVFormatContext *format_ctx = NULL;
    AVCodec *codec;
    AVCodecContext *codec_ctx;
    AVCodecParameters *par;
    AVFrame *frame;
    int frame_decoded, ret = 0;
    AVPacket pkt;
    AVDictionary *opt=NULL;

    FUNC8(&pkt);

    iformat = FUNC3("image2pipe");
    if ((ret = FUNC20(&format_ctx, filename, iformat, NULL)) < 0) {
        FUNC9(log_ctx, AV_LOG_ERROR,
               "Failed to open input file '%s'\n", filename);
        return ret;
    }

    if ((ret = FUNC19(format_ctx, NULL)) < 0) {
        FUNC9(log_ctx, AV_LOG_ERROR, "Find stream info failed\n");
        return ret;
    }

    par = format_ctx->streams[0]->codecpar;
    codec = FUNC14(par->codec_id);
    if (!codec) {
        FUNC9(log_ctx, AV_LOG_ERROR, "Failed to find codec\n");
        ret = FUNC0(EINVAL);
        goto end;
    }

    codec_ctx = FUNC12(codec);
    if (!codec_ctx) {
        FUNC9(log_ctx, AV_LOG_ERROR, "Failed to alloc video decoder context\n");
        ret = FUNC0(ENOMEM);
        goto end;
    }

    ret = FUNC17(codec_ctx, par);
    if (ret < 0) {
        FUNC9(log_ctx, AV_LOG_ERROR, "Failed to copy codec parameters to decoder context\n");
        goto end;
    }

    FUNC2(&opt, "thread_type", "slice", 0);
    if ((ret = FUNC16(codec_ctx, codec, &opt)) < 0) {
        FUNC9(log_ctx, AV_LOG_ERROR, "Failed to open codec\n");
        goto end;
    }

    if (!(frame = FUNC4()) ) {
        FUNC9(log_ctx, AV_LOG_ERROR, "Failed to alloc frame\n");
        ret = FUNC0(ENOMEM);
        goto end;
    }

    ret = FUNC11(format_ctx, &pkt);
    if (ret < 0) {
        FUNC9(log_ctx, AV_LOG_ERROR, "Failed to read frame from file\n");
        goto end;
    }

    ret = FUNC13(codec_ctx, frame, &frame_decoded, &pkt);
    if (ret < 0 || !frame_decoded) {
        FUNC9(log_ctx, AV_LOG_ERROR, "Failed to decode image from file\n");
        if (ret >= 0)
            ret = -1;
        goto end;
    }

    *w       = frame->width;
    *h       = frame->height;
    *pix_fmt = frame->format;

    if ((ret = FUNC6(data, linesize, *w, *h, *pix_fmt, 16)) < 0)
        goto end;
    ret = 0;

    FUNC7(data, linesize, (const uint8_t **)frame->data, frame->linesize, *pix_fmt, *w, *h);

end:
    FUNC10(&pkt);
    FUNC15(&codec_ctx);
    FUNC18(&format_ctx);
    FUNC5(&frame);
    FUNC1(&opt);

    if (ret < 0)
        FUNC9(log_ctx, AV_LOG_ERROR, "Error loading image file '%s'\n", filename);
    return ret;
}