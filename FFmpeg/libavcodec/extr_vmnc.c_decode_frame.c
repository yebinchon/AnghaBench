
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_14__ {int cur_w; int width; int cur_x; int cur_h; int height; int cur_y; int bpp2; int cur_hx; int cur_hy; int bpp; int bigendian; TYPE_8__* pic; int * screendta; int * curmask; int * curbits; int gb; } ;
typedef TYPE_1__ VmncContext ;
struct TYPE_17__ {int key_frame; int* linesize; int ** data; int pict_type; } ;
struct TYPE_16__ {TYPE_1__* priv_data; } ;
struct TYPE_15__ {int size; int * data; } ;
typedef int GetByteContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_P ;
 int EINVAL ;
 int INT_MAX ;







 int av_frame_ref (void*,TYPE_8__*) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int av_reallocp (int **,int) ;
 int bytestream2_get_be16 (int *) ;
 int bytestream2_get_be32 (int *) ;
 void* bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_init (int *,int const*,int) ;
 int bytestream2_skip (int *,int) ;
 int decode_hextile (TYPE_1__* const,int *,int *,int,int,int) ;
 int ff_reget_buffer (TYPE_3__*,TYPE_8__*,int ) ;
 int load_cursor (TYPE_1__* const) ;
 int memcpy (int *,int *,int) ;
 int paint_raw (int *,int,int,int *,int,int,int) ;
 int put_cursor (int *,int,TYPE_1__* const,int,int) ;
 int reset_buffers (TYPE_1__* const) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    VmncContext * const c = avctx->priv_data;
    GetByteContext *gb = &c->gb;
    uint8_t *outptr;
    int dx, dy, w, h, depth, enc, chunks, res, size_left, ret;

    bytestream2_init(gb, buf, buf_size);
    bytestream2_skip(gb, 2);
    chunks = bytestream2_get_be16(gb);
    if (12LL * chunks > bytestream2_get_bytes_left(gb))
        return AVERROR_INVALIDDATA;

    if ((ret = ff_reget_buffer(avctx, c->pic, 0)) < 0)
        return ret;

    c->pic->key_frame = 0;
    c->pic->pict_type = AV_PICTURE_TYPE_P;


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
                memcpy(outptr, c->screendta + i * c->cur_w * c->bpp2,
                       w * c->bpp2);
                outptr += c->pic->linesize[0];
            }
        }
    }

    while (chunks--) {
        if (bytestream2_get_bytes_left(gb) < 12) {
            av_log(avctx, AV_LOG_ERROR, "Premature end of data!\n");
            return -1;
        }
        dx = bytestream2_get_be16(gb);
        dy = bytestream2_get_be16(gb);
        w = bytestream2_get_be16(gb);
        h = bytestream2_get_be16(gb);
        enc = bytestream2_get_be32(gb);
        if ((dx + w > c->width) || (dy + h > c->height)) {
            av_log(avctx, AV_LOG_ERROR,
                    "Incorrect frame size: %ix%i+%ix%i of %ix%i\n",
                    w, h, dx, dy, c->width, c->height);
            return AVERROR_INVALIDDATA;
        }
        outptr = c->pic->data[0] + dx * c->bpp2 + dy * c->pic->linesize[0];
        size_left = bytestream2_get_bytes_left(gb);
        switch (enc) {
        case 134:
            if (w*(int64_t)h*c->bpp2 > INT_MAX/2 - 2) {
                av_log(avctx, AV_LOG_ERROR, "dimensions too large\n");
                return AVERROR_INVALIDDATA;
            }
            if (size_left < 2 + w * h * c->bpp2 * 2) {
                av_log(avctx, AV_LOG_ERROR,
                       "Premature end of data! (need %i got %i)\n",
                       2 + w * h * c->bpp2 * 2, size_left);
                return AVERROR_INVALIDDATA;
            }
            bytestream2_skip(gb, 2);
            c->cur_w = w;
            c->cur_h = h;
            c->cur_hx = dx;
            c->cur_hy = dy;
            if ((c->cur_hx > c->cur_w) || (c->cur_hy > c->cur_h)) {
                av_log(avctx, AV_LOG_ERROR,
                       "Cursor hot spot is not in image: "
                       "%ix%i of %ix%i cursor size\n",
                       c->cur_hx, c->cur_hy, c->cur_w, c->cur_h);
                c->cur_hx = c->cur_hy = 0;
            }
            if (c->cur_w * c->cur_h >= INT_MAX / c->bpp2) {
                reset_buffers(c);
                return AVERROR(EINVAL);
            } else {
                int screen_size = c->cur_w * c->cur_h * c->bpp2;
                if ((ret = av_reallocp(&c->curbits, screen_size)) < 0 ||
                    (ret = av_reallocp(&c->curmask, screen_size)) < 0 ||
                    (ret = av_reallocp(&c->screendta, screen_size)) < 0) {
                    reset_buffers(c);
                    return ret;
                }
            }
            load_cursor(c);
            break;
        case 133:
            bytestream2_skip(gb, 2);
            break;
        case 132:
            c->cur_x = dx - c->cur_hx;
            c->cur_y = dy - c->cur_hy;
            break;
        case 131:
            bytestream2_skip(gb, 10);
            break;
        case 130:
            bytestream2_skip(gb, 4);
            break;
        case 129:
            c->pic->key_frame = 1;
            c->pic->pict_type = AV_PICTURE_TYPE_I;
            depth = bytestream2_get_byte(gb);
            if (depth != c->bpp) {
                av_log(avctx, AV_LOG_INFO,
                       "Depth mismatch. Container %i bpp, "
                       "Frame data: %i bpp\n",
                       c->bpp, depth);
            }
            bytestream2_skip(gb, 1);
            c->bigendian = bytestream2_get_byte(gb);
            if (c->bigendian & (~1)) {
                av_log(avctx, AV_LOG_INFO,
                       "Invalid header: bigendian flag = %i\n", c->bigendian);
                return AVERROR_INVALIDDATA;
            }

            bytestream2_skip(gb, 13);
            break;
        case 128:
            bytestream2_skip(gb, 2);
            break;
        case 0x00000000:
            if (size_left < w * h * c->bpp2) {
                av_log(avctx, AV_LOG_ERROR,
                       "Premature end of data! (need %i got %i)\n",
                       w * h * c->bpp2, size_left);
                return AVERROR_INVALIDDATA;
            }
            paint_raw(outptr, w, h, gb, c->bpp2, c->bigendian,
                      c->pic->linesize[0]);
            break;
        case 0x00000005:
            res = decode_hextile(c, outptr, gb, w, h, c->pic->linesize[0]);
            if (res < 0)
                return res;
            break;
        default:
            av_log(avctx, AV_LOG_ERROR, "Unsupported block type 0x%08X\n", enc);
            chunks = 0;
        }
    }
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
                memcpy(c->screendta + i * c->cur_w * c->bpp2, outptr,
                       w * c->bpp2);
                outptr += c->pic->linesize[0];
            }
            outptr = c->pic->data[0];
            put_cursor(outptr, c->pic->linesize[0], c, c->cur_x, c->cur_y);
        }
    }
    *got_frame = 1;
    if ((ret = av_frame_ref(data, c->pic)) < 0)
        return ret;


    return buf_size;
}
