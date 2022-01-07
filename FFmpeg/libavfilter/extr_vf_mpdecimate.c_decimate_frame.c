
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int height; int width; scalar_t__* linesize; scalar_t__* data; } ;
struct TYPE_8__ {scalar_t__ max_drop_count; int drop_count; int vsub; int hsub; } ;
typedef TYPE_1__ DecimateContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int AV_CEIL_RSHIFT (int ,int) ;
 scalar_t__ diff_planes (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int emms_c () ;

__attribute__((used)) static int decimate_frame(AVFilterContext *ctx,
                          AVFrame *cur, AVFrame *ref)
{
    DecimateContext *decimate = ctx->priv;
    int plane;

    if (decimate->max_drop_count > 0 &&
        decimate->drop_count >= decimate->max_drop_count)
        return 0;
    if (decimate->max_drop_count < 0 &&
        (decimate->drop_count-1) > decimate->max_drop_count)
        return 0;

    for (plane = 0; ref->data[plane] && ref->linesize[plane]; plane++) {





        int vsub = plane == 1 || plane == 2 ? decimate->vsub : 0;
        int hsub = plane == 1 || plane == 2 ? decimate->hsub : 0;
        if (diff_planes(ctx,
                        cur->data[plane], cur->linesize[plane],
                        ref->data[plane], ref->linesize[plane],
                        AV_CEIL_RSHIFT(ref->width, hsub),
                        AV_CEIL_RSHIFT(ref->height, vsub))) {
            emms_c();
            return 0;
        }
    }

    emms_c();
    return 1;
}
