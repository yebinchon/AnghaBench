
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_5__ {int (* clear_blocks ) (int *) ;} ;
struct TYPE_6__ {int gb; TYPE_1__ bdsp; } ;
typedef TYPE_2__ MDECContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ get_bits_left (int *) ;
 int mdec_decode_block_intra (TYPE_2__*,int *,int const) ;
 int stub1 (int *) ;

__attribute__((used)) static inline int decode_mb(MDECContext *a, int16_t block[6][64])
{
    int i, ret;
    static const int block_index[6] = { 5, 4, 0, 1, 2, 3 };

    a->bdsp.clear_blocks(block[0]);

    for (i = 0; i < 6; i++) {
        if ((ret = mdec_decode_block_intra(a, block[block_index[i]],
                                           block_index[i])) < 0)
            return ret;
        if (get_bits_left(&a->gb) < 0)
            return AVERROR_INVALIDDATA;
    }
    return 0;
}
