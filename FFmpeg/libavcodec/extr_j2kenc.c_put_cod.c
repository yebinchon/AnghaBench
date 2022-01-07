
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nreslevels; int log2_cblk_width; int log2_cblk_height; scalar_t__ transform; } ;
struct TYPE_6__ {int buf_end; int buf; TYPE_1__* avctx; TYPE_3__ codsty; } ;
struct TYPE_5__ {scalar_t__ pix_fmt; } ;
typedef TYPE_2__ Jpeg2000EncoderContext ;
typedef TYPE_3__ Jpeg2000CodingStyle ;


 scalar_t__ AV_PIX_FMT_YUV444P ;
 scalar_t__ FF_DWT53 ;
 int JPEG2000_COD ;
 int bytestream_put_be16 (int*,int) ;
 int bytestream_put_byte (int*,int) ;

__attribute__((used)) static int put_cod(Jpeg2000EncoderContext *s)
{
    Jpeg2000CodingStyle *codsty = &s->codsty;

    if (s->buf_end - s->buf < 14)
        return -1;

    bytestream_put_be16(&s->buf, JPEG2000_COD);
    bytestream_put_be16(&s->buf, 12);
    bytestream_put_byte(&s->buf, 0);

    bytestream_put_byte(&s->buf, 0);
    bytestream_put_be16(&s->buf, 1);
    if(s->avctx->pix_fmt == AV_PIX_FMT_YUV444P){
        bytestream_put_byte(&s->buf, 0);
    }else{
        bytestream_put_byte(&s->buf, 0);
    }

    bytestream_put_byte(&s->buf, codsty->nreslevels - 1);
    bytestream_put_byte(&s->buf, codsty->log2_cblk_width-2);
    bytestream_put_byte(&s->buf, codsty->log2_cblk_height-2);
    bytestream_put_byte(&s->buf, 0);
    bytestream_put_byte(&s->buf, codsty->transform == FF_DWT53);
    return 0;
}
