
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ pix_fmt; } ;
typedef int GetByteContext ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_PIX_FMT_PAL8 ;
 int av_log (TYPE_1__*,int ,char*,unsigned int) ;
 unsigned int bytestream2_get_be16 (int *) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_skip (int *,int) ;

__attribute__((used)) static int parse_palette(AVCodecContext *avctx, GetByteContext *gbc,
                         uint32_t *pal, int colors, int pixmap)
{
    int i;

    for (i = 0; i <= colors; i++) {
        uint8_t r, g, b;
        unsigned int idx = bytestream2_get_be16(gbc);
        if (idx > 255 && !pixmap) {
            av_log(avctx, AV_LOG_WARNING,
                   "Palette index out of range: %u\n", idx);
            bytestream2_skip(gbc, 6);
            continue;
        }
        if (avctx->pix_fmt != AV_PIX_FMT_PAL8)
            return AVERROR_INVALIDDATA;
        r = bytestream2_get_byte(gbc);
        bytestream2_skip(gbc, 1);
        g = bytestream2_get_byte(gbc);
        bytestream2_skip(gbc, 1);
        b = bytestream2_get_byte(gbc);
        bytestream2_skip(gbc, 1);
        pal[pixmap ? i : idx] = (0xFFU << 24) | (r << 16) | (g << 8) | b;
    }
    return 0;
}
