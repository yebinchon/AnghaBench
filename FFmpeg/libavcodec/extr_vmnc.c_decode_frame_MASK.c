#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
struct TYPE_14__ {int cur_w; int width; int cur_x; int cur_h; int height; int cur_y; int bpp2; int cur_hx; int cur_hy; int bpp; int bigendian; TYPE_8__* pic; int /*<<< orphan*/ * screendta; int /*<<< orphan*/ * curmask; int /*<<< orphan*/ * curbits; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ VmncContext ;
struct TYPE_17__ {int key_frame; int* linesize; int /*<<< orphan*/ ** data; int /*<<< orphan*/  pict_type; } ;
struct TYPE_16__ {TYPE_1__* priv_data; } ;
struct TYPE_15__ {int size; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  EINVAL ; 
 int INT_MAX ; 
#define  MAGIC_WMVd 134 
#define  MAGIC_WMVe 133 
#define  MAGIC_WMVf 132 
#define  MAGIC_WMVg 131 
#define  MAGIC_WMVh 130 
#define  MAGIC_WMVi 129 
#define  MAGIC_WMVj 128 
 int FUNC1 (void*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ **,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (TYPE_1__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC11 (TYPE_3__*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,TYPE_1__* const,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__* const) ; 

__attribute__((used)) static int FUNC17(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size       = avpkt->size;
    VmncContext * const c = avctx->priv_data;
    GetByteContext *gb = &c->gb;
    uint8_t *outptr;
    int dx, dy, w, h, depth, enc, chunks, res, size_left, ret;

    FUNC8(gb, buf, buf_size);
    FUNC9(gb, 2);
    chunks = FUNC4(gb);
    if (12LL * chunks > FUNC7(gb))
        return AVERROR_INVALIDDATA;

    if ((ret = FUNC11(avctx, c->pic, 0)) < 0)
        return ret;

    c->pic->key_frame = 0;
    c->pic->pict_type = AV_PICTURE_TYPE_P;

    // restore screen after cursor
    if (c->screendta) {
        int i;
        w = c->cur_w;
        if (c->width < c->cur_x + w)
            w = c->width - c->cur_x;
        h = c->cur_h;
        if (c->height < c->cur_y + h)
            h = c->height - c->cur_y;
        dx = c->cur_x;
        if (dx < 0) {
            w += dx;
            dx = 0;
        }
        dy = c->cur_y;
        if (dy < 0) {
            h += dy;
            dy = 0;
        }
        if ((w > 0) && (h > 0)) {
            outptr = c->pic->data[0] + dx * c->bpp2 + dy * c->pic->linesize[0];
            for (i = 0; i < h; i++) {
                FUNC13(outptr, c->screendta + i * c->cur_w * c->bpp2,
                       w * c->bpp2);
                outptr += c->pic->linesize[0];
            }
        }
    }

    while (chunks--) {
        if (FUNC7(gb) < 12) {
            FUNC2(avctx, AV_LOG_ERROR, "Premature end of data!\n");
            return -1;
        }
        dx  = FUNC4(gb);
        dy  = FUNC4(gb);
        w   = FUNC4(gb);
        h   = FUNC4(gb);
        enc = FUNC5(gb);
        if ((dx + w > c->width) || (dy + h > c->height)) {
            FUNC2(avctx, AV_LOG_ERROR,
                    "Incorrect frame size: %ix%i+%ix%i of %ix%i\n",
                    w, h, dx, dy, c->width, c->height);
            return AVERROR_INVALIDDATA;
        }
        outptr = c->pic->data[0] + dx * c->bpp2 + dy * c->pic->linesize[0];
        size_left = FUNC7(gb);
        switch (enc) {
        case MAGIC_WMVd: // cursor
            if (w*(int64_t)h*c->bpp2 > INT_MAX/2 - 2) {
                FUNC2(avctx, AV_LOG_ERROR, "dimensions too large\n");
                return AVERROR_INVALIDDATA;
            }
            if (size_left < 2 + w * h * c->bpp2 * 2) {
                FUNC2(avctx, AV_LOG_ERROR,
                       "Premature end of data! (need %i got %i)\n",
                       2 + w * h * c->bpp2 * 2, size_left);
                return AVERROR_INVALIDDATA;
            }
            FUNC9(gb, 2);
            c->cur_w  = w;
            c->cur_h  = h;
            c->cur_hx = dx;
            c->cur_hy = dy;
            if ((c->cur_hx > c->cur_w) || (c->cur_hy > c->cur_h)) {
                FUNC2(avctx, AV_LOG_ERROR,
                       "Cursor hot spot is not in image: "
                       "%ix%i of %ix%i cursor size\n",
                       c->cur_hx, c->cur_hy, c->cur_w, c->cur_h);
                c->cur_hx = c->cur_hy = 0;
            }
            if (c->cur_w * c->cur_h >= INT_MAX / c->bpp2) {
                FUNC16(c);
                return FUNC0(EINVAL);
            } else {
                int screen_size = c->cur_w * c->cur_h * c->bpp2;
                if ((ret = FUNC3(&c->curbits, screen_size)) < 0 ||
                    (ret = FUNC3(&c->curmask, screen_size)) < 0 ||
                    (ret = FUNC3(&c->screendta, screen_size)) < 0) {
                    FUNC16(c);
                    return ret;
                }
            }
            FUNC12(c);
            break;
        case MAGIC_WMVe: // unknown
            FUNC9(gb, 2);
            break;
        case MAGIC_WMVf: // update cursor position
            c->cur_x = dx - c->cur_hx;
            c->cur_y = dy - c->cur_hy;
            break;
        case MAGIC_WMVg: // unknown
            FUNC9(gb, 10);
            break;
        case MAGIC_WMVh: // unknown
            FUNC9(gb, 4);
            break;
        case MAGIC_WMVi: // ServerInitialization struct
            c->pic->key_frame = 1;
            c->pic->pict_type = AV_PICTURE_TYPE_I;
            depth = FUNC6(gb);
            if (depth != c->bpp) {
                FUNC2(avctx, AV_LOG_INFO,
                       "Depth mismatch. Container %i bpp, "
                       "Frame data: %i bpp\n",
                       c->bpp, depth);
            }
            FUNC9(gb, 1);
            c->bigendian = FUNC6(gb);
            if (c->bigendian & (~1)) {
                FUNC2(avctx, AV_LOG_INFO,
                       "Invalid header: bigendian flag = %i\n", c->bigendian);
                return AVERROR_INVALIDDATA;
            }
            //skip the rest of pixel format data
            FUNC9(gb, 13);
            break;
        case MAGIC_WMVj: // unknown
            FUNC9(gb, 2);
            break;
        case 0x00000000: // raw rectangle data
            if (size_left < w * h * c->bpp2) {
                FUNC2(avctx, AV_LOG_ERROR,
                       "Premature end of data! (need %i got %i)\n",
                       w * h * c->bpp2, size_left);
                return AVERROR_INVALIDDATA;
            }
            FUNC14(outptr, w, h, gb, c->bpp2, c->bigendian,
                      c->pic->linesize[0]);
            break;
        case 0x00000005: // HexTile encoded rectangle
            res = FUNC10(c, outptr, gb, w, h, c->pic->linesize[0]);
            if (res < 0)
                return res;
            break;
        default:
            FUNC2(avctx, AV_LOG_ERROR, "Unsupported block type 0x%08X\n", enc);
            chunks = 0; // leave chunks decoding loop
        }
    }
    if (c->screendta) {
        int i;
        // save screen data before painting cursor
        w = c->cur_w;
        if (c->width < c->cur_x + w)
            w = c->width - c->cur_x;
        h = c->cur_h;
        if (c->height < c->cur_y + h)
            h = c->height - c->cur_y;
        dx = c->cur_x;
        if (dx < 0) {
            w += dx;
            dx = 0;
        }
        dy = c->cur_y;
        if (dy < 0) {
            h += dy;
            dy = 0;
        }
        if ((w > 0) && (h > 0)) {
            outptr = c->pic->data[0] + dx * c->bpp2 + dy * c->pic->linesize[0];
            for (i = 0; i < h; i++) {
                FUNC13(c->screendta + i * c->cur_w * c->bpp2, outptr,
                       w * c->bpp2);
                outptr += c->pic->linesize[0];
            }
            outptr = c->pic->data[0];
            FUNC15(outptr, c->pic->linesize[0], c, c->cur_x, c->cur_y);
        }
    }
    *got_frame = 1;
    if ((ret = FUNC1(data, c->pic)) < 0)
        return ret;

    /* always report that the buffer was completely consumed */
    return buf_size;
}