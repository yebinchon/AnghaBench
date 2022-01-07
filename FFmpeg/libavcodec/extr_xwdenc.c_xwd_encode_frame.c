
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int pal ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_16__ {int pix_fmt; int width; int height; } ;
struct TYPE_15__ {int key_frame; int** data; int * linesize; int pict_type; } ;
struct TYPE_14__ {int* data; int flags; } ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int AV_PIX_FMT_FLAG_BE ;
 int AV_PKT_FLAG_KEY ;
 int EINVAL ;
 int FFALIGN (int,int) ;
 int* WINDOW_NAME ;
 int WINDOW_NAME_SIZE ;
 int XWD_CMAP_SIZE ;
 int XWD_HEADER_SIZE ;
 int XWD_PSEUDO_COLOR ;
 int XWD_STATIC_GRAY ;
 int XWD_TRUE_COLOR ;
 int XWD_VERSION ;
 int XWD_Z_PIXMAP ;
 int av_get_bits_per_pixel (TYPE_1__ const*) ;
 int av_log (TYPE_4__*,int ,char*) ;
 TYPE_1__* av_pix_fmt_desc_get (int) ;
 int avpriv_set_systematic_pal2 (int*,int) ;
 int bytestream_put_be16 (int**,int) ;
 int bytestream_put_be32 (int**,int) ;
 int bytestream_put_buffer (int**,int*,int) ;
 int bytestream_put_byte (int**,int) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int,int ) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int xwd_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                            const AVFrame *pict, int *got_packet)
{
    enum AVPixelFormat pix_fmt = avctx->pix_fmt;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(pix_fmt);
    uint32_t pixdepth, bpp, bpad, ncolors = 0, lsize, vclass, be = 0;
    uint32_t rgb[3] = { 0 }, bitorder = 0;
    uint32_t header_size;
    int i, out_size, ret;
    uint8_t *ptr, *buf;
    AVFrame * const p = (AVFrame *)pict;
    uint32_t pal[256];

    pixdepth = av_get_bits_per_pixel(desc);
    if (desc->flags & AV_PIX_FMT_FLAG_BE)
        be = 1;
    switch (pix_fmt) {
    case 147:
    case 139:
    case 128:
    case 148:
        if (pix_fmt == 147 ||
            pix_fmt == 148)
            be = 1;
        if (pix_fmt == 148 ||
            pix_fmt == 128) {
            rgb[0] = 0xFF;
            rgb[1] = 0xFF00;
            rgb[2] = 0xFF0000;
        } else {
            rgb[0] = 0xFF0000;
            rgb[1] = 0xFF00;
            rgb[2] = 0xFF;
        }
        bpp = 32;
        pixdepth = 24;
        vclass = XWD_TRUE_COLOR;
        bpad = 32;
        break;
    case 146:
    case 135:
        if (pix_fmt == 135)
            be = 1;
        bpp = 24;
        vclass = XWD_TRUE_COLOR;
        bpad = 32;
        rgb[0] = 0xFF0000;
        rgb[1] = 0xFF00;
        rgb[2] = 0xFF;
        break;
    case 130:
    case 131:
    case 141:
    case 142:
        if (pix_fmt == 141 ||
            pix_fmt == 142) {
            rgb[0] = 0x1F;
            rgb[1] = 0x7E0;
            rgb[2] = 0xF800;
        } else {
            rgb[0] = 0xF800;
            rgb[1] = 0x7E0;
            rgb[2] = 0x1F;
        }
        bpp = 16;
        vclass = XWD_TRUE_COLOR;
        bpad = 16;
        break;
    case 132:
    case 133:
    case 143:
    case 144:
        if (pix_fmt == 143 ||
            pix_fmt == 144) {
            rgb[0] = 0x1F;
            rgb[1] = 0x3E0;
            rgb[2] = 0x7C00;
        } else {
            rgb[0] = 0x7C00;
            rgb[1] = 0x3E0;
            rgb[2] = 0x1F;
        }
        bpp = 16;
        vclass = XWD_TRUE_COLOR;
        bpad = 16;
        break;
    case 129:
    case 140:
    case 134:
    case 145:
    case 136:
        bpp = 8;
        vclass = XWD_PSEUDO_COLOR;
        bpad = 8;
        ncolors = 256;
        break;
    case 138:
        bpp = 8;
        bpad = 8;
        vclass = XWD_STATIC_GRAY;
        break;
    case 137:
        be = 1;
        bitorder = 1;
        bpp = 1;
        bpad = 8;
        vclass = XWD_STATIC_GRAY;
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "unsupported pixel format\n");
        return AVERROR(EINVAL);
    }

    lsize = FFALIGN(bpp * avctx->width, bpad) / 8;
    header_size = XWD_HEADER_SIZE + WINDOW_NAME_SIZE;
    out_size = header_size + ncolors * XWD_CMAP_SIZE + avctx->height * lsize;

    if ((ret = ff_alloc_packet2(avctx, pkt, out_size, 0)) < 0)
        return ret;
    buf = pkt->data;

    p->key_frame = 1;
    p->pict_type = AV_PICTURE_TYPE_I;

    bytestream_put_be32(&buf, header_size);
    bytestream_put_be32(&buf, XWD_VERSION);
    bytestream_put_be32(&buf, XWD_Z_PIXMAP);
    bytestream_put_be32(&buf, pixdepth);
    bytestream_put_be32(&buf, avctx->width);
    bytestream_put_be32(&buf, avctx->height);
    bytestream_put_be32(&buf, 0);
    bytestream_put_be32(&buf, be);
    bytestream_put_be32(&buf, 32);
    bytestream_put_be32(&buf, bitorder);
    bytestream_put_be32(&buf, bpad);
    bytestream_put_be32(&buf, bpp);
    bytestream_put_be32(&buf, lsize);
    bytestream_put_be32(&buf, vclass);
    bytestream_put_be32(&buf, rgb[0]);
    bytestream_put_be32(&buf, rgb[1]);
    bytestream_put_be32(&buf, rgb[2]);
    bytestream_put_be32(&buf, 8);
    bytestream_put_be32(&buf, ncolors);
    bytestream_put_be32(&buf, ncolors);
    bytestream_put_be32(&buf, avctx->width);
    bytestream_put_be32(&buf, avctx->height);
    bytestream_put_be32(&buf, 0);
    bytestream_put_be32(&buf, 0);
    bytestream_put_be32(&buf, 0);
    bytestream_put_buffer(&buf, WINDOW_NAME, WINDOW_NAME_SIZE);

    if (pix_fmt == 136) {
        memcpy(pal, p->data[1], sizeof(pal));
    } else {
        avpriv_set_systematic_pal2(pal, pix_fmt);
    }

    for (i = 0; i < ncolors; i++) {
        uint32_t val;
        uint8_t red, green, blue;

        val = pal[i];
        red = (val >> 16) & 0xFF;
        green = (val >> 8) & 0xFF;
        blue = val & 0xFF;

        bytestream_put_be32(&buf, i);
        bytestream_put_be16(&buf, red << 8);
        bytestream_put_be16(&buf, green << 8);
        bytestream_put_be16(&buf, blue << 8);
        bytestream_put_byte(&buf, 0x7);
        bytestream_put_byte(&buf, 0);
    }

    ptr = p->data[0];
    for (i = 0; i < avctx->height; i++) {
        bytestream_put_buffer(&buf, ptr, lsize);
        ptr += p->linesize[0];
    }

    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;
    return 0;
}
