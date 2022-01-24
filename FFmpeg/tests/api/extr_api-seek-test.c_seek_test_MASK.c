#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  codec_id; } ;
struct TYPE_11__ {TYPE_1__** streams; } ;
struct TYPE_10__ {TYPE_3__* codecpar; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVCodecParameters ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_DECODER_NOT_FOUND ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__**) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_2__**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/ * crc_array ; 
 scalar_t__ number_of_elements ; 
 int /*<<< orphan*/ * pts_array ; 
 long FUNC16 (char const*) ; 
 scalar_t__ size_of_array ; 

__attribute__((used)) static int FUNC17(const char *input_filename, const char *start, const char *end)
{
    AVCodec *codec = NULL;
    AVCodecContext *ctx= NULL;
    AVCodecParameters *origin_par = NULL;
    AVFrame *fr = NULL;
    AVFormatContext *fmt_ctx = NULL;
    int video_stream;
    int result;
    int i, j;
    long int start_ts, end_ts;

    size_of_array = 0;
    number_of_elements = 0;
    crc_array = NULL;
    pts_array = NULL;

    result = FUNC14(&fmt_ctx, input_filename, NULL, NULL);
    if (result < 0) {
        FUNC5(NULL, AV_LOG_ERROR, "Can't open file\n");
        return result;
    }

    result = FUNC13(fmt_ctx, NULL);
    if (result < 0) {
        FUNC5(NULL, AV_LOG_ERROR, "Can't get stream info\n");
        goto end;
    }

    start_ts = FUNC16(start);
    end_ts = FUNC16(end);
    if ((start_ts < 0) || (end_ts < 0)) {
        result = -1;
        goto end;
    }

    //TODO: add ability to work with audio format
    video_stream = FUNC1(fmt_ctx, AVMEDIA_TYPE_VIDEO, -1, -1, NULL, 0);
    if (video_stream < 0) {
      FUNC5(NULL, AV_LOG_ERROR, "Can't find video stream in input file\n");
      result = video_stream;
      goto end;
    }

    origin_par = fmt_ctx->streams[video_stream]->codecpar;

    codec = FUNC8(origin_par->codec_id);
    if (!codec) {
        FUNC5(NULL, AV_LOG_ERROR, "Can't find decoder\n");
        result = AVERROR_DECODER_NOT_FOUND;
        goto end;
    }

    ctx = FUNC6(codec);
    if (!ctx) {
        FUNC5(NULL, AV_LOG_ERROR, "Can't allocate decoder context\n");
        result = FUNC0(ENOMEM);
        goto end;
    }

    result = FUNC11(ctx, origin_par);
    if (result) {
        FUNC5(NULL, AV_LOG_ERROR, "Can't copy decoder context\n");
        goto end;
    }

    result = FUNC10(ctx, codec, NULL);
    if (result < 0) {
        FUNC5(ctx, AV_LOG_ERROR, "Can't open decoder\n");
        goto end;
    }

    fr = FUNC2();
    if (!fr) {
        FUNC5(NULL, AV_LOG_ERROR, "Can't allocate frame\n");
        result = FUNC0(ENOMEM);
        goto end;
    }

    result = FUNC15(fmt_ctx, video_stream, ctx, fr, 0, 0, 1);
    if (result != 0)
        goto end;

    for (i = start_ts; i < end_ts; i += 100) {
        for (j = i + 100; j < end_ts; j += 100) {
            result = FUNC15(fmt_ctx, video_stream, ctx, fr, i, j, 0);
            if (result != 0)
                break;
        }
    }

end:
    FUNC4(&crc_array);
    FUNC4(&pts_array);
    FUNC3(&fr);
    FUNC7(ctx);
    FUNC12(&fmt_ctx);
    FUNC9(&ctx);
    return result;
}