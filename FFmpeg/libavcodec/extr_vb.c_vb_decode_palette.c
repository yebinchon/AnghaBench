
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* pal; int stream; int avctx; } ;
typedef TYPE_1__ VBDecContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int bytestream2_get_be24 (int *) ;
 int bytestream2_get_byte (int *) ;

__attribute__((used)) static void vb_decode_palette(VBDecContext *c, int data_size)
{
    int start, size, i;

    start = bytestream2_get_byte(&c->stream);
    size = (bytestream2_get_byte(&c->stream) - 1) & 0xFF;
    if (start + size > 255) {
        av_log(c->avctx, AV_LOG_ERROR, "Palette change runs beyond entry 256\n");
        return;
    }
    if (size*3+2 > data_size) {
        av_log(c->avctx, AV_LOG_ERROR, "Palette data runs beyond chunk size\n");
        return;
    }
    for (i = start; i <= start + size; i++)
        c->pal[i] = 0xFFU << 24 | bytestream2_get_be24(&c->stream);
}
