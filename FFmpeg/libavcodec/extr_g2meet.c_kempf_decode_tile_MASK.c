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
typedef  int uint8_t ;
typedef  int uLongf ;
struct TYPE_3__ {int tile_width; int tile_height; int* framebuf; int framebuf_stride; int width; int height; int* kempf_flags; int* jpeg_tile; int tile_stride; int /*<<< orphan*/  kempf_buf; int /*<<< orphan*/  jc; } ;
typedef  TYPE_1__ G2MContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int const*,int,int*,int,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*,int,int*,int,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*,int const*,int) ; 

__attribute__((used)) static int FUNC8(G2MContext *c, int tile_x, int tile_y,
                             const uint8_t *src, int src_size)
{
    int width, height;
    int hdr, zsize, npal, tidx = -1, ret;
    int i, j;
    const uint8_t *src_end = src + src_size;
    uint8_t pal[768], transp[3];
    uLongf dlen = (c->tile_width + 1) * c->tile_height;
    int sub_type;
    int nblocks, cblocks, bstride;
    int bits, bitbuf, coded;
    uint8_t *dst = c->framebuf + tile_x * c->tile_width * 3 +
                   tile_y * c->tile_height * c->framebuf_stride;

    if (src_size < 2)
        return AVERROR_INVALIDDATA;

    width  = FUNC1(c->width  - tile_x * c->tile_width,  c->tile_width);
    height = FUNC1(c->height - tile_y * c->tile_height, c->tile_height);

    hdr      = *src++;
    sub_type = hdr >> 5;
    if (sub_type == 0) {
        int j;
        FUNC5(transp, src, 3);
        src += 3;
        for (j = 0; j < height; j++, dst += c->framebuf_stride)
            for (i = 0; i < width; i++)
                FUNC5(dst + i * 3, transp, 3);
        return 0;
    } else if (sub_type == 1) {
        return FUNC2(&c->jc, width, height, src, src_end - src,
                               dst, c->framebuf_stride, NULL, 0, 0, 0);
    }

    if (sub_type != 2) {
        FUNC5(transp, src, 3);
        src += 3;
    }
    npal = *src++ + 1;
    if (src_end - src < npal * 3)
        return AVERROR_INVALIDDATA;
    FUNC5(pal, src, npal * 3);
    src += npal * 3;
    if (sub_type != 2) {
        for (i = 0; i < npal; i++) {
            if (!FUNC4(pal + i * 3, transp, 3)) {
                tidx = i;
                break;
            }
        }
    }

    if (src_end - src < 2)
        return 0;
    zsize = (src[0] << 8) | src[1];
    src  += 2;

    if (src_end - src < zsize + (sub_type != 2))
        return AVERROR_INVALIDDATA;

    ret = FUNC7(c->kempf_buf, &dlen, src, zsize);
    if (ret)
        return AVERROR_INVALIDDATA;
    src += zsize;

    if (sub_type == 2) {
        FUNC3(c->kempf_buf, dlen, dst, c->framebuf_stride,
                          NULL, 0, width, height, pal, npal, tidx);
        return 0;
    }

    nblocks = *src++ + 1;
    cblocks = 0;
    bstride = FUNC0(width, 16) >> 3;
    // blocks are coded LSB and we need normal bitreader for JPEG data
    bits = 0;
    for (i = 0; i < (FUNC0(height, 16) >> 4); i++) {
        for (j = 0; j < (FUNC0(width, 16) >> 4); j++) {
            if (!bits) {
                if (src >= src_end)
                    return AVERROR_INVALIDDATA;
                bitbuf = *src++;
                bits   = 8;
            }
            coded = bitbuf & 1;
            bits--;
            bitbuf >>= 1;
            cblocks += coded;
            if (cblocks > nblocks)
                return AVERROR_INVALIDDATA;
            c->kempf_flags[j * 2 +      i * 2      * bstride] =
            c->kempf_flags[j * 2 + 1 +  i * 2      * bstride] =
            c->kempf_flags[j * 2 +     (i * 2 + 1) * bstride] =
            c->kempf_flags[j * 2 + 1 + (i * 2 + 1) * bstride] = coded;
        }
    }

    FUNC6(c->jpeg_tile, 0, c->tile_stride * height);
    FUNC2(&c->jc, width, height, src, src_end - src,
                    c->jpeg_tile, c->tile_stride,
                    c->kempf_flags, bstride, nblocks * 4, 0);

    FUNC3(c->kempf_buf, dlen, dst, c->framebuf_stride,
                      c->jpeg_tile, c->tile_stride,
                      width, height, pal, npal, tidx);

    return 0;
}