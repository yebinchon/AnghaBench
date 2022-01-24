#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {scalar_t__ format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ linesize; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_1__ AVFrame ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const* const*,int const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ hw_pix_fmt ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC12(AVCodecContext *avctx, AVPacket *packet)
{
    AVFrame *frame = NULL, *sw_frame = NULL;
    AVFrame *tmp_frame = NULL;
    uint8_t *buffer = NULL;
    int size;
    int ret = 0;

    ret = FUNC9(avctx, packet);
    if (ret < 0) {
        FUNC10(stderr, "Error during decoding\n");
        return ret;
    }

    while (1) {
        if (!(frame = FUNC1()) || !(sw_frame = FUNC1())) {
            FUNC10(stderr, "Can not alloc frame\n");
            ret = FUNC0(ENOMEM);
            goto fail;
        }

        ret = FUNC8(avctx, frame);
        if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF) {
            FUNC2(&frame);
            FUNC2(&sw_frame);
            return 0;
        } else if (ret < 0) {
            FUNC10(stderr, "Error while decoding\n");
            goto fail;
        }

        if (frame->format == hw_pix_fmt) {
            /* retrieve data from GPU to CPU */
            if ((ret = FUNC4(sw_frame, frame, 0)) < 0) {
                FUNC10(stderr, "Error transferring the data to system memory\n");
                goto fail;
            }
            tmp_frame = sw_frame;
        } else
            tmp_frame = frame;

        size = FUNC6(tmp_frame->format, tmp_frame->width,
                                        tmp_frame->height, 1);
        buffer = FUNC7(size);
        if (!buffer) {
            FUNC10(stderr, "Can not alloc buffer\n");
            ret = FUNC0(ENOMEM);
            goto fail;
        }
        ret = FUNC5(buffer, size,
                                      (const uint8_t * const *)tmp_frame->data,
                                      (const int *)tmp_frame->linesize, tmp_frame->format,
                                      tmp_frame->width, tmp_frame->height, 1);
        if (ret < 0) {
            FUNC10(stderr, "Can not copy image to buffer\n");
            goto fail;
        }

        if ((ret = FUNC11(buffer, 1, size, output_file)) < 0) {
            FUNC10(stderr, "Failed to dump raw data.\n");
            goto fail;
        }

    fail:
        FUNC2(&frame);
        FUNC2(&sw_frame);
        FUNC3(&buffer);
        if (ret < 0)
            return ret;
    }
}