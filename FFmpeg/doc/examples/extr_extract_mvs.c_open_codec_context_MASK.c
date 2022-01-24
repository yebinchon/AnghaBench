#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_7__ {TYPE_1__** streams; } ;
struct TYPE_6__ {int /*<<< orphan*/  codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 char* src_filename ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * video_dec_ctx ; 
 TYPE_1__* video_stream ; 
 size_t video_stream_idx ; 

__attribute__((used)) static int FUNC8(AVFormatContext *fmt_ctx, enum AVMediaType type)
{
    int ret;
    AVStream *st;
    AVCodecContext *dec_ctx = NULL;
    AVCodec *dec = NULL;
    AVDictionary *opts = NULL;

    ret = FUNC2(fmt_ctx, type, -1, -1, &dec, 0);
    if (ret < 0) {
        FUNC7(stderr, "Could not find %s stream in input file '%s'\n",
                FUNC3(type), src_filename);
        return ret;
    } else {
        int stream_idx = ret;
        st = fmt_ctx->streams[stream_idx];

        dec_ctx = FUNC4(dec);
        if (!dec_ctx) {
            FUNC7(stderr, "Failed to allocate codec\n");
            return FUNC0(EINVAL);
        }

        ret = FUNC6(dec_ctx, st->codecpar);
        if (ret < 0) {
            FUNC7(stderr, "Failed to copy codec parameters to codec context\n");
            return ret;
        }

        /* Init the video decoder */
        FUNC1(&opts, "flags2", "+export_mvs", 0);
        if ((ret = FUNC5(dec_ctx, dec, &opts)) < 0) {
            FUNC7(stderr, "Failed to open %s codec\n",
                    FUNC3(type));
            return ret;
        }

        video_stream_idx = stream_idx;
        video_stream = fmt_ctx->streams[video_stream_idx];
        video_dec_ctx = dec_ctx;
    }

    return 0;
}