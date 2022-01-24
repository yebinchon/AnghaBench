#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
struct TYPE_4__ {unsigned long buf_size; unsigned long* buf; unsigned long buf_start; int /*<<< orphan*/  avctx; int /*<<< orphan*/  lzws; } ;
typedef  TYPE_1__ TiffEncoderContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
#define  TIFF_ADOBE_DEFLATE 132 
#define  TIFF_DEFLATE 131 
#define  TIFF_LZW 130 
#define  TIFF_PACKBITS 129 
#define  TIFF_RAW 128 
 int /*<<< orphan*/  Z_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/  const*,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC7(TiffEncoderContext *s, const int8_t *src,
                        uint8_t *dst, int n, int compr)
{
    switch (compr) {
#if CONFIG_ZLIB
    case TIFF_DEFLATE:
    case TIFF_ADOBE_DEFLATE:
    {
        unsigned long zlen = s->buf_size - (*s->buf - s->buf_start);
        if (compress(dst, &zlen, src, n) != Z_OK) {
            av_log(s->avctx, AV_LOG_ERROR, "Compressing failed\n");
            return AVERROR_EXTERNAL;
        }
        return zlen;
    }
#endif
    case TIFF_RAW:
        if (FUNC2(s, n))
            return FUNC0(EINVAL);
        FUNC6(dst, src, n);
        return n;
    case TIFF_PACKBITS:
        return FUNC5(dst, s->buf_size - (*s->buf - s->buf_start),
                             src, 1, n, 2, 0xff, -1, 0);
    case TIFF_LZW:
        return FUNC4(s->lzws, src, n);
    default:
        FUNC1(s->avctx, AV_LOG_ERROR, "Unsupported compression method: %d\n",
               compr);
        return FUNC0(EINVAL);
    }
}