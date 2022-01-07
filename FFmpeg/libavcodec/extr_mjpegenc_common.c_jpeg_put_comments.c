
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_6__ {int flags; scalar_t__ pix_fmt; scalar_t__ color_range; TYPE_1__ sample_aspect_ratio; } ;
typedef int PutBitContext ;
typedef TYPE_1__ AVRational ;
typedef TYPE_2__ AVCodecContext ;


 int APP0 ;
 scalar_t__ AVCOL_RANGE_JPEG ;
 scalar_t__ AVCOL_RANGE_MPEG ;
 int AV_CODEC_FLAG_BITEXACT ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_PIX_FMT_YUV420P ;
 scalar_t__ AV_PIX_FMT_YUV422P ;
 scalar_t__ AV_PIX_FMT_YUV444P ;
 int AV_WB16 (int *,int) ;
 int COM ;
 char* LIBAVCODEC_IDENT ;
 int av_log (TYPE_2__*,int ,char*,int,int) ;
 int av_reduce (int*,int*,int,int,int) ;
 int avpriv_put_string (int *,char*,int) ;
 int flush_put_bits (int *) ;
 int put_bits (int *,int,int) ;
 int * put_bits_ptr (int *) ;
 int put_marker (int *,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void jpeg_put_comments(AVCodecContext *avctx, PutBitContext *p)
{
    int size;
    uint8_t *ptr;

    if (avctx->sample_aspect_ratio.num > 0 && avctx->sample_aspect_ratio.den > 0) {
        AVRational sar = avctx->sample_aspect_ratio;

        if (sar.num > 65535 || sar.den > 65535) {
            if (!av_reduce(&sar.num, &sar.den, avctx->sample_aspect_ratio.num, avctx->sample_aspect_ratio.den, 65535))
                av_log(avctx, AV_LOG_WARNING,
                    "Cannot store exact aspect ratio %d:%d\n",
                    avctx->sample_aspect_ratio.num,
                    avctx->sample_aspect_ratio.den);
        }


        put_marker(p, APP0);
        put_bits(p, 16, 16);
        avpriv_put_string(p, "JFIF", 1);



        put_bits(p, 16, 0x0102);
        put_bits(p, 8, 0);
        put_bits(p, 16, sar.num);
        put_bits(p, 16, sar.den);
        put_bits(p, 8, 0);
        put_bits(p, 8, 0);
    }


    if (!(avctx->flags & AV_CODEC_FLAG_BITEXACT)) {
        put_marker(p, COM);
        flush_put_bits(p);
        ptr = put_bits_ptr(p);
        put_bits(p, 16, 0);
        avpriv_put_string(p, LIBAVCODEC_IDENT, 1);
        size = strlen(LIBAVCODEC_IDENT)+3;
        AV_WB16(ptr, size);
    }

    if (((avctx->pix_fmt == AV_PIX_FMT_YUV420P ||
          avctx->pix_fmt == AV_PIX_FMT_YUV422P ||
          avctx->pix_fmt == AV_PIX_FMT_YUV444P) && avctx->color_range != AVCOL_RANGE_JPEG)
        || avctx->color_range == AVCOL_RANGE_MPEG) {
        put_marker(p, COM);
        flush_put_bits(p);
        ptr = put_bits_ptr(p);
        put_bits(p, 16, 0);
        avpriv_put_string(p, "CS=ITU601", 1);
        size = strlen("CS=ITU601")+3;
        AV_WB16(ptr, size);
    }
}
