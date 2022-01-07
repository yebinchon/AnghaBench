
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_7__ {int table; } ;
struct TYPE_5__ {size_t* permutated; } ;
struct TYPE_6__ {int* intra_matrix; int gb; TYPE_1__ scantable; int avctx; } ;
typedef TYPE_2__ ASV1Context ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int VLC_BITS ;
 int asv1_get_level (int *) ;
 int av_log (int ,int ,char*) ;
 TYPE_3__ ccp_vlc ;
 int get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static inline int asv1_decode_block(ASV1Context *a, int16_t block[64])
{
    int i;

    block[0] = 8 * get_bits(&a->gb, 8);

    for (i = 0; i < 11; i++) {
        const int ccp = get_vlc2(&a->gb, ccp_vlc.table, VLC_BITS, 1);

        if (ccp) {
            if (ccp == 16)
                break;
            if (ccp < 0 || i >= 10) {
                av_log(a->avctx, AV_LOG_ERROR, "coded coeff pattern damaged\n");
                return AVERROR_INVALIDDATA;
            }

            if (ccp & 8)
                block[a->scantable.permutated[4 * i + 0]] = (asv1_get_level(&a->gb) * a->intra_matrix[4 * i + 0]) >> 4;
            if (ccp & 4)
                block[a->scantable.permutated[4 * i + 1]] = (asv1_get_level(&a->gb) * a->intra_matrix[4 * i + 1]) >> 4;
            if (ccp & 2)
                block[a->scantable.permutated[4 * i + 2]] = (asv1_get_level(&a->gb) * a->intra_matrix[4 * i + 2]) >> 4;
            if (ccp & 1)
                block[a->scantable.permutated[4 * i + 3]] = (asv1_get_level(&a->gb) * a->intra_matrix[4 * i + 3]) >> 4;
        }
    }

    return 0;
}
