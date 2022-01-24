#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {scalar_t__* data; } ;
typedef  int /*<<< orphan*/  CVPixelBufferRef ;
typedef  TYPE_1__ AVFrame ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC10(AVCodecContext   *avctx,
                                        const AVFrame    *frame,
                                        CVPixelBufferRef cv_img,
                                        const size_t     *plane_strides,
                                        const size_t     *plane_rows)
{
    int i, j;
    size_t plane_count;
    int status;
    int rows;
    int src_stride;
    int dst_stride;
    uint8_t *src_addr;
    uint8_t *dst_addr;
    size_t copy_bytes;

    status = FUNC6(cv_img, 0);
    if (status) {
        FUNC8(
            avctx,
            AV_LOG_ERROR,
            "Error: Could not lock base address of CVPixelBuffer: %d.\n",
            status
        );
    }

    if (FUNC5(cv_img)) {
        plane_count = FUNC4(cv_img);
        for (i = 0; frame->data[i]; i++) {
            if (i == plane_count) {
                FUNC7(cv_img, 0);
                FUNC8(avctx,
                    AV_LOG_ERROR,
                    "Error: different number of planes in AVFrame and CVPixelBuffer.\n"
                );

                return AVERROR_EXTERNAL;
            }

            dst_addr = (uint8_t*)FUNC1(cv_img, i);
            src_addr = (uint8_t*)frame->data[i];
            dst_stride = FUNC3(cv_img, i);
            src_stride = plane_strides[i];
            rows = plane_rows[i];

            if (dst_stride == src_stride) {
                FUNC9(dst_addr, src_addr, src_stride * rows);
            } else {
                copy_bytes = dst_stride < src_stride ? dst_stride : src_stride;

                for (j = 0; j < rows; j++) {
                    FUNC9(dst_addr + j * dst_stride, src_addr + j * src_stride, copy_bytes);
                }
            }
        }
    } else {
        if (frame->data[1]) {
            FUNC7(cv_img, 0);
            FUNC8(avctx,
                AV_LOG_ERROR,
                "Error: different number of planes in AVFrame and non-planar CVPixelBuffer.\n"
            );

            return AVERROR_EXTERNAL;
        }

        dst_addr = (uint8_t*)FUNC0(cv_img);
        src_addr = (uint8_t*)frame->data[0];
        dst_stride = FUNC2(cv_img);
        src_stride = plane_strides[0];
        rows = plane_rows[0];

        if (dst_stride == src_stride) {
            FUNC9(dst_addr, src_addr, src_stride * rows);
        } else {
            copy_bytes = dst_stride < src_stride ? dst_stride : src_stride;

            for (j = 0; j < rows; j++) {
                FUNC9(dst_addr + j * dst_stride, src_addr + j * src_stride, copy_bytes);
            }
        }
    }

    status = FUNC7(cv_img, 0);
    if (status) {
        FUNC8(avctx, AV_LOG_ERROR, "Error: Could not unlock CVPixelBuffer base address: %d.\n", status);
        return AVERROR_EXTERNAL;
    }

    return 0;
}