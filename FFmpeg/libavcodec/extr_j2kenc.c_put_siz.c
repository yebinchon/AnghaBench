
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_end; int buf; int ncomponents; int* chroma_shift; int tile_height; int tile_width; int height; int width; } ;
typedef TYPE_1__ Jpeg2000EncoderContext ;


 int JPEG2000_SIZ ;
 int bytestream_put_be16 (int*,int) ;
 int bytestream_put_be32 (int*,int ) ;
 int bytestream_put_byte (int*,int) ;

__attribute__((used)) static int put_siz(Jpeg2000EncoderContext *s)
{
    int i;

    if (s->buf_end - s->buf < 40 + 3 * s->ncomponents)
        return -1;

    bytestream_put_be16(&s->buf, JPEG2000_SIZ);
    bytestream_put_be16(&s->buf, 38 + 3 * s->ncomponents);
    bytestream_put_be16(&s->buf, 0);
    bytestream_put_be32(&s->buf, s->width);
    bytestream_put_be32(&s->buf, s->height);
    bytestream_put_be32(&s->buf, 0);
    bytestream_put_be32(&s->buf, 0);

    bytestream_put_be32(&s->buf, s->tile_width);
    bytestream_put_be32(&s->buf, s->tile_height);
    bytestream_put_be32(&s->buf, 0);
    bytestream_put_be32(&s->buf, 0);
    bytestream_put_be16(&s->buf, s->ncomponents);

    for (i = 0; i < s->ncomponents; i++){
        bytestream_put_byte(&s->buf, 7);
        bytestream_put_byte(&s->buf, i?1<<s->chroma_shift[0]:1);
        bytestream_put_byte(&s->buf, i?1<<s->chroma_shift[1]:1);
    }
    return 0;
}
