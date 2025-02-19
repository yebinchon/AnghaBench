
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sequence; int * next_frame; } ;
typedef TYPE_1__ VP9RawReorderContext ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVBSFContext ;


 int FRAME_SLOTS ;
 int vp9_raw_reorder_clear_slot (TYPE_1__*,int) ;

__attribute__((used)) static void vp9_raw_reorder_flush(AVBSFContext *bsf)
{
    VP9RawReorderContext *ctx = bsf->priv_data;

    for (int s = 0; s < FRAME_SLOTS; s++)
        vp9_raw_reorder_clear_slot(ctx, s);
    ctx->next_frame = ((void*)0);
    ctx->sequence = 0;
}
