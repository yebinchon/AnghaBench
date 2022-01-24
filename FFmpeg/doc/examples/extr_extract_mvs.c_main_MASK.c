#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ stream_index; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  fmt_ctx ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  frame ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* src_filename ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  video_dec_ctx ; 
 int /*<<< orphan*/  video_stream ; 
 scalar_t__ video_stream_idx ; 

int FUNC15(int argc, char **argv)
{
    int ret = 0;
    AVPacket pkt = { 0 };

    if (argc != 2) {
        FUNC12(stderr, "Usage: %s <video>\n", argv[0]);
        FUNC11(1);
    }
    src_filename = argv[1];

    if (FUNC9(&fmt_ctx, src_filename, NULL, NULL) < 0) {
        FUNC12(stderr, "Could not open source file %s\n", src_filename);
        FUNC11(1);
    }

    if (FUNC8(fmt_ctx, NULL) < 0) {
        FUNC12(stderr, "Could not find stream information\n");
        FUNC11(1);
    }

    FUNC13(fmt_ctx, AVMEDIA_TYPE_VIDEO);

    FUNC1(fmt_ctx, 0, src_filename, 0);

    if (!video_stream) {
        FUNC12(stderr, "Could not find video stream in the input, aborting\n");
        ret = 1;
        goto end;
    }

    frame = FUNC2();
    if (!frame) {
        FUNC12(stderr, "Could not allocate frame\n");
        ret = FUNC0(ENOMEM);
        goto end;
    }

    FUNC14("framenum,source,blockw,blockh,srcx,srcy,dstx,dsty,flags\n");

    /* read frames from the file */
    while (FUNC5(fmt_ctx, &pkt) >= 0) {
        if (pkt.stream_index == video_stream_idx)
            ret = FUNC10(&pkt);
        FUNC4(&pkt);
        if (ret < 0)
            break;
    }

    /* flush cached frames */
    FUNC10(NULL);

end:
    FUNC6(&video_dec_ctx);
    FUNC7(&fmt_ctx);
    FUNC3(&frame);
    return ret < 0;
}