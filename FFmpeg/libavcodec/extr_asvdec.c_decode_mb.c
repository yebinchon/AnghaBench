
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_7__ {int (* clear_blocks ) (int *) ;} ;
struct TYPE_9__ {TYPE_2__* avctx; TYPE_1__ bdsp; } ;
struct TYPE_8__ {scalar_t__ codec_id; } ;
typedef TYPE_3__ ASV1Context ;


 scalar_t__ AV_CODEC_ID_ASV1 ;
 int asv1_decode_block (TYPE_3__*,int *) ;
 int asv2_decode_block (TYPE_3__*,int *) ;
 int stub1 (int *) ;

__attribute__((used)) static inline int decode_mb(ASV1Context *a, int16_t block[6][64])
{
    int i, ret;

    a->bdsp.clear_blocks(block[0]);

    if (a->avctx->codec_id == AV_CODEC_ID_ASV1) {
        for (i = 0; i < 6; i++) {
            if ((ret = asv1_decode_block(a, block[i])) < 0)
                return ret;
        }
    } else {
        for (i = 0; i < 6; i++) {
            if ((ret = asv2_decode_block(a, block[i])) < 0)
                return ret;
        }
    }
    return 0;
}
