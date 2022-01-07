
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* int8_t ;
struct TYPE_11__ {int buffer; } ;
struct TYPE_10__ {int avctx; TYPE_6__ gb; int * block; } ;
typedef TYPE_1__ TgqContext ;
typedef int GetBitContext ;
typedef int AVFrame ;


 int AV_LOG_ERROR ;
 int FFMIN (int ,int) ;
 int av_log (int ,int ,char*,int) ;
 int bytestream2_get_buffer (TYPE_6__*,void**,int) ;
 void* bytestream2_get_byte (TYPE_6__*) ;
 int bytestream2_get_bytes_left (TYPE_6__*) ;
 int bytestream2_skip (TYPE_6__*,int) ;
 int init_get_bits8 (int *,int ,int ) ;
 int memset (void**,void*,int) ;
 int tgq_decode_block (TYPE_1__*,int ,int *) ;
 int tgq_idct_put_mb (TYPE_1__*,int *,int *,int,int) ;
 int tgq_idct_put_mb_dconly (TYPE_1__*,int *,int,int,void**) ;

__attribute__((used)) static int tgq_decode_mb(TgqContext *s, AVFrame *frame, int mb_y, int mb_x)
{
    int mode;
    int i;
    int8_t dc[6];

    mode = bytestream2_get_byte(&s->gb);
    if (mode > 12) {
        GetBitContext gb;
        int ret = init_get_bits8(&gb, s->gb.buffer, FFMIN(bytestream2_get_bytes_left(&s->gb), mode));
        if (ret < 0)
            return ret;

        for (i = 0; i < 6; i++)
            tgq_decode_block(s, s->block[i], &gb);
        tgq_idct_put_mb(s, s->block, frame, mb_x, mb_y);
        bytestream2_skip(&s->gb, mode);
    } else {
        if (mode == 3) {
            memset(dc, bytestream2_get_byte(&s->gb), 4);
            dc[4] = bytestream2_get_byte(&s->gb);
            dc[5] = bytestream2_get_byte(&s->gb);
        } else if (mode == 6) {
            bytestream2_get_buffer(&s->gb, dc, 6);
        } else if (mode == 12) {
            for (i = 0; i < 6; i++) {
                dc[i] = bytestream2_get_byte(&s->gb);
                bytestream2_skip(&s->gb, 1);
            }
        } else {
            av_log(s->avctx, AV_LOG_ERROR, "unsupported mb mode %i\n", mode);
            return -1;
        }
        tgq_idct_put_mb_dconly(s, frame, mb_x, mb_y, dc);
    }
    return 0;
}
