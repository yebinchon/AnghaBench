
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__** slot; } ;
typedef TYPE_1__ VP9RawReorderContext ;
struct TYPE_5__ {int slots; } ;


 int vp9_raw_reorder_frame_free (TYPE_2__**) ;

__attribute__((used)) static void vp9_raw_reorder_clear_slot(VP9RawReorderContext *ctx, int s)
{
    if (ctx->slot[s]) {
        ctx->slot[s]->slots &= ~(1 << s);
        if (ctx->slot[s]->slots == 0)
            vp9_raw_reorder_frame_free(&ctx->slot[s]);
        else
            ctx->slot[s] = ((void*)0);
    }
}
