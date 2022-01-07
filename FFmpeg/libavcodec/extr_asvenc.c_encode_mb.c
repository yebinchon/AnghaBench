
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_9__ {int buf_end; int buf; } ;
struct TYPE_8__ {TYPE_1__* avctx; TYPE_3__ pb; } ;
struct TYPE_7__ {scalar_t__ codec_id; } ;
typedef TYPE_2__ ASV1Context ;


 scalar_t__ AV_CODEC_ID_ASV1 ;
 int MAX_MB_SIZE ;
 int asv1_encode_block (TYPE_2__*,int *) ;
 int asv2_encode_block (TYPE_2__*,int *) ;
 int av_assert0 (int) ;
 int put_bits_count (TYPE_3__*) ;

__attribute__((used)) static inline int encode_mb(ASV1Context *a, int16_t block[6][64])
{
    int i;

    av_assert0(a->pb.buf_end - a->pb.buf - (put_bits_count(&a->pb) >> 3) >= MAX_MB_SIZE);

    if (a->avctx->codec_id == AV_CODEC_ID_ASV1) {
        for (i = 0; i < 6; i++)
            asv1_encode_block(a, block[i]);
    } else {
        for (i = 0; i < 6; i++) {
            asv2_encode_block(a, block[i]);
        }
    }
    return 0;
}
