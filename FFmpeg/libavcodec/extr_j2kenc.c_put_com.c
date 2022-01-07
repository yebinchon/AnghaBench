
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int buf_end; int buf; TYPE_1__* avctx; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_2__ Jpeg2000EncoderContext ;


 int AV_CODEC_FLAG_BITEXACT ;
 int JPEG2000_COM ;
 int LIBAVCODEC_IDENT ;
 int bytestream_put_be16 (int*,int) ;
 int bytestream_put_buffer (int*,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static int put_com(Jpeg2000EncoderContext *s, int compno)
{
    int size = 4 + strlen(LIBAVCODEC_IDENT);

    if (s->avctx->flags & AV_CODEC_FLAG_BITEXACT)
        return 0;

    if (s->buf_end - s->buf < size + 2)
        return -1;

    bytestream_put_be16(&s->buf, JPEG2000_COM);
    bytestream_put_be16(&s->buf, size);
    bytestream_put_be16(&s->buf, 1);

    bytestream_put_buffer(&s->buf, LIBAVCODEC_IDENT, strlen(LIBAVCODEC_IDENT));

    return 0;
}
