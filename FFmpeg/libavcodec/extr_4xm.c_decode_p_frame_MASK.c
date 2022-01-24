#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_9__ {int width; int height; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* bswap_buf ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ;} ;
struct TYPE_8__ {int version; int /*<<< orphan*/  g; int /*<<< orphan*/  g2; int /*<<< orphan*/  bitstream_buffer; int /*<<< orphan*/  gb; TYPE_1__ bbdsp; int /*<<< orphan*/  bitstream_buffer_size; TYPE_6__* avctx; int /*<<< orphan*/ * last_frame_buffer; int /*<<< orphan*/ * frame_buffer; } ;
typedef  TYPE_2__ FourXContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 unsigned int FUNC1 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC11(FourXContext *f, const uint8_t *buf, int length)
{
    int x, y;
    const int width  = f->avctx->width;
    const int height = f->avctx->height;
    uint16_t *dst    = f->frame_buffer;
    uint16_t *src;
    unsigned int bitstream_size, bytestream_size, wordstream_size, extra,
                 bytestream_offset, wordstream_offset;
    int ret;

    src = f->last_frame_buffer;

    if (f->version > 1) {
        extra           = 20;
        if (length < extra)
            return AVERROR_INVALIDDATA;
        bitstream_size  = FUNC2(buf + 8);
        wordstream_size = FUNC2(buf + 12);
        bytestream_size = FUNC2(buf + 16);
    } else {
        extra           = 0;
        bitstream_size  = FUNC1(buf - 4);
        wordstream_size = FUNC1(buf - 2);
        bytestream_size = FUNC3(length - bitstream_size - wordstream_size, 0);
    }

    if (bitstream_size > length || bitstream_size >= INT_MAX/8 ||
        bytestream_size > length - bitstream_size ||
        wordstream_size > length - bytestream_size - bitstream_size ||
        extra > length - bytestream_size - bitstream_size - wordstream_size) {
        FUNC5(f->avctx, AV_LOG_ERROR, "lengths %d %d %d %d\n", bitstream_size, bytestream_size, wordstream_size,
        bitstream_size+ bytestream_size+ wordstream_size - length);
        return AVERROR_INVALIDDATA;
    }

    FUNC4(&f->bitstream_buffer, &f->bitstream_buffer_size,
                          bitstream_size);
    if (!f->bitstream_buffer)
        return FUNC0(ENOMEM);
    f->bbdsp.bswap_buf(f->bitstream_buffer, (const uint32_t *) (buf + extra),
                       bitstream_size / 4);
    FUNC8(&f->gb, f->bitstream_buffer, 8 * bitstream_size);

    wordstream_offset = extra + bitstream_size;
    bytestream_offset = extra + bitstream_size + wordstream_size;
    FUNC6(&f->g2, buf + wordstream_offset,
                     length - wordstream_offset);
    FUNC6(&f->g, buf + bytestream_offset,
                     length - bytestream_offset);

    FUNC9(f, width * 2);

    for (y = 0; y < height; y += 8) {
        for (x = 0; x < width; x += 8)
            if ((ret = FUNC7(f, dst + x, src + x, 3, 3, width)) < 0)
                return ret;
        src += 8 * width;
        dst += 8 * width;
    }

    return 0;
}