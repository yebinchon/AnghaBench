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
struct TYPE_12__ {int /*<<< orphan*/  get_format; int /*<<< orphan*/  hw_device_ctx; } ;
struct TYPE_11__ {TYPE_1__** streams; } ;
struct TYPE_10__ {int /*<<< orphan*/  codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* decoder_ctx ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  get_vaapi_format ; 
 int /*<<< orphan*/  hw_device_ctx ; 
 TYPE_2__* ifmt_ctx ; 
 int /*<<< orphan*/  stderr ; 
 size_t video_stream ; 

__attribute__((used)) static int FUNC10(const char *filename)
{
    int ret;
    AVCodec *decoder = NULL;
    AVStream *video = NULL;

    if ((ret = FUNC8(&ifmt_ctx, filename, NULL, NULL)) < 0) {
        FUNC9(stderr, "Cannot open input file '%s', Error code: %s\n",
                filename, FUNC2(ret));
        return ret;
    }

    if ((ret = FUNC7(ifmt_ctx, NULL)) < 0) {
        FUNC9(stderr, "Cannot find input stream information. Error code: %s\n",
                FUNC2(ret));
        return ret;
    }

    ret = FUNC3(ifmt_ctx, AVMEDIA_TYPE_VIDEO, -1, -1, &decoder, 0);
    if (ret < 0) {
        FUNC9(stderr, "Cannot find a video stream in the input file. "
                "Error code: %s\n", FUNC2(ret));
        return ret;
    }
    video_stream = ret;

    if (!(decoder_ctx = FUNC4(decoder)))
        return FUNC0(ENOMEM);

    video = ifmt_ctx->streams[video_stream];
    if ((ret = FUNC6(decoder_ctx, video->codecpar)) < 0) {
        FUNC9(stderr, "avcodec_parameters_to_context error. Error code: %s\n",
                FUNC2(ret));
        return ret;
    }

    decoder_ctx->hw_device_ctx = FUNC1(hw_device_ctx);
    if (!decoder_ctx->hw_device_ctx) {
        FUNC9(stderr, "A hardware device reference create failed.\n");
        return FUNC0(ENOMEM);
    }
    decoder_ctx->get_format    = get_vaapi_format;

    if ((ret = FUNC5(decoder_ctx, decoder, NULL)) < 0)
        FUNC9(stderr, "Failed to open codec for decoding. Error code: %s\n",
                FUNC2(ret));

    return ret;
}