
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_5__ {int permutated; } ;
struct TYPE_6__ {int (* clear_blocks ) (int *) ;} ;
struct TYPE_7__ {int mb_y; int mb_x; int avctx; int last_dc; TYPE_1__ intra_scantable; int intra_matrix; int gb; TYPE_2__ bdsp; } ;
typedef TYPE_3__ TqiContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,int ,int ) ;
 int ff_mpeg1_decode_block_intra (int *,int ,int ,int ,int *,int,int) ;
 int stub1 (int *) ;

__attribute__((used)) static int tqi_decode_mb(TqiContext *t, int16_t (*block)[64])
{
    int n;

    t->bdsp.clear_blocks(block[0]);
    for (n = 0; n < 6; n++) {
        int ret = ff_mpeg1_decode_block_intra(&t->gb,
                                              t->intra_matrix,
                                              t->intra_scantable.permutated,
                                              t->last_dc, block[n], n, 1);
        if (ret < 0) {
            av_log(t->avctx, AV_LOG_ERROR, "ac-tex damaged at %d %d\n",
                   t->mb_x, t->mb_y);
            return ret;
        }
    }

    return 0;
}
