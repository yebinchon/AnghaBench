
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_8__ {int * permutated; } ;
struct TYPE_9__ {TYPE_2__ intra_scantable; int pb; TYPE_1__* avctx; } ;
struct TYPE_7__ {int flags2; } ;
typedef int PutBitContext ;
typedef TYPE_3__ MpegEncContext ;


 int AV_CODEC_FLAG2_NO_OUTPUT ;
 int mpeg4_encode_block (TYPE_3__*,int *,int,int,int *,int *,int *) ;
 int mpeg4_get_block_length (TYPE_3__*,int *,int,int,int *) ;
 int skip_put_bits (int *,int ) ;

__attribute__((used)) static inline void mpeg4_encode_blocks(MpegEncContext *s, int16_t block[6][64],
                                       int intra_dc[6], uint8_t **scan_table,
                                       PutBitContext *dc_pb,
                                       PutBitContext *ac_pb)
{
    int i;

    if (scan_table) {
        if (s->avctx->flags2 & AV_CODEC_FLAG2_NO_OUTPUT) {
            for (i = 0; i < 6; i++)
                skip_put_bits(&s->pb,
                              mpeg4_get_block_length(s, block[i], i,
                                                     intra_dc[i], scan_table[i]));
        } else {

            for (i = 0; i < 6; i++)
                mpeg4_encode_block(s, block[i], i,
                                   intra_dc[i], scan_table[i], dc_pb, ac_pb);
        }
    } else {
        if (s->avctx->flags2 & AV_CODEC_FLAG2_NO_OUTPUT) {
            for (i = 0; i < 6; i++)
                skip_put_bits(&s->pb,
                              mpeg4_get_block_length(s, block[i], i, 0,
                                                     s->intra_scantable.permutated));
        } else {

            for (i = 0; i < 6; i++)
                mpeg4_encode_block(s, block[i], i, 0,
                                   s->intra_scantable.permutated, dc_pb, ac_pb);
        }
    }
}
