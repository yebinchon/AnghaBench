
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {int gb; } ;
struct TYPE_7__ {int height; int width; TYPE_3__* priv_data; } ;
struct TYPE_6__ {int* linesize; int ** data; } ;
typedef int GetByteContext ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVCodecContext ;
typedef TYPE_3__ ARBCContext ;


 int AV_WB24 (int *,int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_le16 (int *) ;

__attribute__((used)) static int fill_tile4(AVCodecContext *avctx, int color, AVFrame *frame)
{
    ARBCContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    int nb_tiles = bytestream2_get_le16(gb);
    int h = avctx->height - 1;
    int pixels_overwritten = 0;

    if ((avctx->width / 4 + 1) * (avctx->height / 4 + 1) < nb_tiles)
        return 0;

    for (int i = 0; i < nb_tiles; i++) {
        int y = bytestream2_get_byte(gb);
        int x = bytestream2_get_byte(gb);
        uint16_t mask = bytestream2_get_le16(gb);
        int start_y = y * 4, start_x = x * 4;
        int end_y = start_y + 4, end_x = start_x + 4;

        for (int j = start_y; j < end_y; j++) {
            for (int k = start_x; k < end_x; k++) {
                if (mask & 0x8000) {
                    if (j >= avctx->height || k >= avctx->width) {
                        mask = mask << 1;
                        continue;
                    }
                    AV_WB24(&frame->data[0][frame->linesize[0] * (h - j) + 3 * k], color);
                    pixels_overwritten ++;
                }
                mask = mask << 1;
            }
        }
    }
    return pixels_overwritten;
}
