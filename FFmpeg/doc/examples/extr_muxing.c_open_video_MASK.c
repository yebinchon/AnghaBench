#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ pix_fmt; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_8__ {TYPE_1__* st; int /*<<< orphan*/ * tmp_frame; void* frame; TYPE_3__* enc; } ;
struct TYPE_7__ {int /*<<< orphan*/  codecpar; } ;
typedef  TYPE_2__ OutputStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_3__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 scalar_t__ AV_PIX_FMT_YUV420P ; 
 void* FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC8(AVFormatContext *oc, AVCodec *codec, OutputStream *ost, AVDictionary *opt_arg)
{
    int ret;
    AVCodecContext *c = ost->enc;
    AVDictionary *opt = NULL;

    FUNC1(&opt, opt_arg, 0);

    /* open the codec */
    ret = FUNC4(c, codec, &opt);
    FUNC2(&opt);
    if (ret < 0) {
        FUNC7(stderr, "Could not open video codec: %s\n", FUNC3(ret));
        FUNC6(1);
    }

    /* allocate and init a re-usable frame */
    ost->frame = FUNC0(c->pix_fmt, c->width, c->height);
    if (!ost->frame) {
        FUNC7(stderr, "Could not allocate video frame\n");
        FUNC6(1);
    }

    /* If the output format is not YUV420P, then a temporary YUV420P
     * picture is needed too. It is then converted to the required
     * output format. */
    ost->tmp_frame = NULL;
    if (c->pix_fmt != AV_PIX_FMT_YUV420P) {
        ost->tmp_frame = FUNC0(AV_PIX_FMT_YUV420P, c->width, c->height);
        if (!ost->tmp_frame) {
            FUNC7(stderr, "Could not allocate temporary picture\n");
            FUNC6(1);
        }
    }

    /* copy the stream parameters to the muxer */
    ret = FUNC5(ost->st->codecpar, c);
    if (ret < 0) {
        FUNC7(stderr, "Could not copy the stream parameters\n");
        FUNC6(1);
    }
}