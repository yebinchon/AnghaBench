
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int error_concealment; } ;
struct TYPE_4__ {int mecc_inited; int mb_stride; int mb_height; int mb_num; scalar_t__ error_occurred; int error_count; int error_status_table; TYPE_2__* avctx; int mecc; } ;
typedef TYPE_1__ ERContext ;


 int ER_MB_END ;
 int ER_MB_ERROR ;
 int VP_START ;
 int atomic_init (int *,int) ;
 int ff_me_cmp_init (int *,TYPE_2__*) ;
 int memset (int ,int,int) ;

void ff_er_frame_start(ERContext *s)
{
    if (!s->avctx->error_concealment)
        return;

    if (!s->mecc_inited) {
        ff_me_cmp_init(&s->mecc, s->avctx);
        s->mecc_inited = 1;
    }

    memset(s->error_status_table, ER_MB_ERROR | VP_START | ER_MB_END,
           s->mb_stride * s->mb_height * sizeof(uint8_t));
    atomic_init(&s->error_count, 3 * s->mb_num);
    s->error_occurred = 0;
}
