
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VP9RawReorderContext ;
struct TYPE_3__ {int * priv_data; } ;
typedef TYPE_1__ AVBSFContext ;


 int FRAME_SLOTS ;
 int vp9_raw_reorder_clear_slot (int *,int) ;

__attribute__((used)) static void vp9_raw_reorder_close(AVBSFContext *bsf)
{
    VP9RawReorderContext *ctx = bsf->priv_data;
    int s;

    for (s = 0; s < FRAME_SLOTS; s++)
        vp9_raw_reorder_clear_slot(ctx, s);
}
