#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_8__ {int /*<<< orphan*/  codec_id; } ;
struct TYPE_7__ {TYPE_1__** streams; } ;
struct TYPE_6__ {TYPE_4__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ refcount ; 
 char* src_filename ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(int *stream_idx,
                              AVCodecContext **dec_ctx, AVFormatContext *fmt_ctx, enum AVMediaType type)
{
    int ret, stream_index;
    AVStream *st;
    AVCodec *dec = NULL;
    AVDictionary *opts = NULL;

    ret = FUNC2(fmt_ctx, type, -1, -1, NULL, 0);
    if (ret < 0) {
        FUNC8(stderr, "Could not find %s stream in input file '%s'\n",
                FUNC3(type), src_filename);
        return ret;
    } else {
        stream_index = ret;
        st = fmt_ctx->streams[stream_index];

        /* find decoder for the stream */
        dec = FUNC5(st->codecpar->codec_id);
        if (!dec) {
            FUNC8(stderr, "Failed to find %s codec\n",
                    FUNC3(type));
            return FUNC0(EINVAL);
        }

        /* Allocate a codec context for the decoder */
        *dec_ctx = FUNC4(dec);
        if (!*dec_ctx) {
            FUNC8(stderr, "Failed to allocate the %s codec context\n",
                    FUNC3(type));
            return FUNC0(ENOMEM);
        }

        /* Copy codec parameters from input stream to output codec context */
        if ((ret = FUNC7(*dec_ctx, st->codecpar)) < 0) {
            FUNC8(stderr, "Failed to copy %s codec parameters to decoder context\n",
                    FUNC3(type));
            return ret;
        }

        /* Init the decoders, with or without reference counting */
        FUNC1(&opts, "refcounted_frames", refcount ? "1" : "0", 0);
        if ((ret = FUNC6(*dec_ctx, dec, &opts)) < 0) {
            FUNC8(stderr, "Failed to open %s codec\n",
                    FUNC3(type));
            return ret;
        }
        *stream_idx = stream_index;
    }

    return 0;
}