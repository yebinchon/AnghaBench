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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  (* setup_lru_func ) (int /*<<< orphan*/ **) ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  scalar_t__ (* decode_slice_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ;
struct TYPE_7__ {int height; int width; int discard_damaged_percentage; int pix_fmt; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int,int,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int*,int*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, AVFrame *pic,
                            const uint8_t *src, int src_size,
                            decode_slice_func decode_slice,
                            setup_lru_func setup_lru,
                            enum AVPixelFormat fmt)
{
    GetByteContext gb, gb_check;
    GetBitContext  gb2;
    int nslices, slice, line = 0;
    uint32_t off, slice_size;
    uint64_t off_check;
    uint8_t lru[3][8];
    int ret;

    ret = FUNC5(avctx, src, src_size, &gb, &nslices, &off);
    if (ret < 0)
        return ret;

    off_check = off;
    gb_check = gb;
    for (slice = 0; slice < nslices; slice++) {
        slice_size = FUNC1(&gb_check);

        if (slice_size <= 16 + (avctx->height * avctx->width / (8 * nslices)))
            return AVERROR_INVALIDDATA;
        off_check += slice_size;
    }

    if (off_check - avctx->discard_damaged_percentage*off_check/100 > src_size)
        return AVERROR_INVALIDDATA;

    avctx->pix_fmt = fmt;
    if ((ret = FUNC3(avctx, pic, 0)) < 0)
        return ret;

    for (slice = 0; slice < nslices; slice++) {
        slice_size = FUNC1(&gb);

        setup_lru(lru);

        ret = FUNC2(avctx, src, src_size, slice_size, off);
        if (ret < 0)
            return ret;

        if ((ret = FUNC4(&gb2, src + off + 16, slice_size - 16)) < 0)
            return ret;

        line += decode_slice(&gb2, pic, line, avctx->height - line, lru);

        off += slice_size;
    }

    if (avctx->height - line) {
        FUNC0(avctx, "Not enough slice data available");
    }

    return 0;
}