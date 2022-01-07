
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_6__ {int (* idct_add ) (int *,int,int *) ;} ;
struct TYPE_7__ {int (* clear_block ) (int *) ;} ;
struct TYPE_9__ {scalar_t__* block_last_index; int avctx; TYPE_2__ bdsp; } ;
struct TYPE_8__ {int* abt_type_table; int ** abt_block2; TYPE_1__ wdsp; TYPE_4__ s; } ;
typedef TYPE_3__ Wmv2Context ;
typedef TYPE_4__ MpegEncContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int ff_simple_idct48_add (int *,int,int *) ;
 int ff_simple_idct84_add (int *,int,int *) ;
 int stub1 (int *,int,int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;

__attribute__((used)) static void wmv2_add_block(Wmv2Context *w, int16_t *block1,
                           uint8_t *dst, int stride, int n)
{
    MpegEncContext *const s = &w->s;

    if (s->block_last_index[n] >= 0) {
        switch (w->abt_type_table[n]) {
        case 0:
            w->wdsp.idct_add(dst, stride, block1);
            break;
        case 1:
            ff_simple_idct84_add(dst, stride, block1);
            ff_simple_idct84_add(dst + 4 * stride, stride, w->abt_block2[n]);
            s->bdsp.clear_block(w->abt_block2[n]);
            break;
        case 2:
            ff_simple_idct48_add(dst, stride, block1);
            ff_simple_idct48_add(dst + 4, stride, w->abt_block2[n]);
            s->bdsp.clear_block(w->abt_block2[n]);
            break;
        default:
            av_log(s->avctx, AV_LOG_ERROR, "internal error in WMV2 abt\n");
        }
    }
}
