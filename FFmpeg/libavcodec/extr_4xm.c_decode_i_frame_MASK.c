#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {int width; int height; } ;
struct TYPE_10__ {int /*<<< orphan*/  table; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* bswap_buf ) (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ;} ;
struct TYPE_11__ {int last_dc; TYPE_8__* avctx; TYPE_2__ pre_vlc; int /*<<< orphan*/  pre_gb; int /*<<< orphan*/  const* bitstream_buffer; TYPE_1__ bbdsp; int /*<<< orphan*/  bitstream_buffer_size; int /*<<< orphan*/  gb; } ;
typedef  TYPE_3__ FourXContext ;

/* Variables and functions */
 int /*<<< orphan*/  ACDC_VLC_BITS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC11(FourXContext *f, const uint8_t *buf, int length)
{
    int x, y, ret;
    const int width  = f->avctx->width;
    const int height = f->avctx->height;
    const unsigned int bitstream_size = FUNC1(buf);
    unsigned int prestream_size;
    const uint8_t *prestream;

    if (bitstream_size > (1 << 26))
        return AVERROR_INVALIDDATA;

    if (length < bitstream_size + 12) {
        FUNC4(f->avctx, AV_LOG_ERROR, "packet size too small\n");
        return AVERROR_INVALIDDATA;
    }

    prestream_size = 4 * FUNC1(buf + bitstream_size + 4);
    prestream      =             buf + bitstream_size + 12;

    if (prestream_size + bitstream_size + 12 != length
        || prestream_size > (1 << 26)) {
        FUNC4(f->avctx, AV_LOG_ERROR, "size mismatch %d %d %d\n",
               prestream_size, bitstream_size, length);
        return AVERROR_INVALIDDATA;
    }

    prestream = FUNC9(f, prestream, prestream_size);
    if (!prestream) {
        FUNC4(f->avctx, AV_LOG_ERROR, "Error reading Huffman tables.\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC2(prestream <= buf + length);

    FUNC8(&f->gb, buf + 4, 8 * bitstream_size);

    prestream_size = length + buf - prestream;

    FUNC3(&f->bitstream_buffer, &f->bitstream_buffer_size,
                          prestream_size);
    if (!f->bitstream_buffer)
        return FUNC0(ENOMEM);
    f->bbdsp.bswap_buf(f->bitstream_buffer, (const uint32_t *) prestream,
                       prestream_size / 4);
    FUNC8(&f->pre_gb, f->bitstream_buffer, 8 * prestream_size);

    f->last_dc = 0 * 128 * 8 * 8;

    for (y = 0; y < height; y += 16) {
        for (x = 0; x < width; x += 16) {
            if ((ret = FUNC5(f)) < 0)
                return ret;

            FUNC7(f, x, y);
        }
    }

    if (FUNC6(&f->pre_gb, f->pre_vlc.table, ACDC_VLC_BITS, 3) != 256)
        FUNC4(f->avctx, AV_LOG_ERROR, "end mismatch\n");

    return 0;
}