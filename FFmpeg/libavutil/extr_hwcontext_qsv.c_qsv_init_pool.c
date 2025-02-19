
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mfxFrameSurface1 ;
struct TYPE_13__ {int initial_pool_size; TYPE_1__* internal; TYPE_3__* hwctx; } ;
struct TYPE_12__ {int frame_type; int nb_surfaces; int * surfaces; } ;
struct TYPE_11__ {int * surfaces_internal; } ;
struct TYPE_10__ {int pool_internal; TYPE_2__* priv; } ;
typedef TYPE_2__ QSVFramesContext ;
typedef TYPE_3__ AVQSVFramesContext ;
typedef TYPE_4__ AVHWFramesContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int MFX_MEMTYPE_OPAQUE_FRAME ;
 int av_buffer_pool_init2 (int,TYPE_4__*,int ,int *) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int * av_mallocz_array (int,int) ;
 int qsv_init_child_ctx (TYPE_4__*) ;
 int qsv_init_surface (TYPE_4__*,int *) ;
 int qsv_pool_alloc ;

__attribute__((used)) static int qsv_init_pool(AVHWFramesContext *ctx, uint32_t fourcc)
{
    QSVFramesContext *s = ctx->internal->priv;
    AVQSVFramesContext *frames_hwctx = ctx->hwctx;

    int i, ret = 0;

    if (ctx->initial_pool_size <= 0) {
        av_log(ctx, AV_LOG_ERROR, "QSV requires a fixed frame pool size\n");
        return AVERROR(EINVAL);
    }

    s->surfaces_internal = av_mallocz_array(ctx->initial_pool_size,
                                            sizeof(*s->surfaces_internal));
    if (!s->surfaces_internal)
        return AVERROR(ENOMEM);

    for (i = 0; i < ctx->initial_pool_size; i++) {
        ret = qsv_init_surface(ctx, &s->surfaces_internal[i]);
        if (ret < 0)
            return ret;
    }

    if (!(frames_hwctx->frame_type & MFX_MEMTYPE_OPAQUE_FRAME)) {
        ret = qsv_init_child_ctx(ctx);
        if (ret < 0)
            return ret;
    }

    ctx->internal->pool_internal = av_buffer_pool_init2(sizeof(mfxFrameSurface1),
                                                        ctx, qsv_pool_alloc, ((void*)0));
    if (!ctx->internal->pool_internal)
        return AVERROR(ENOMEM);

    frames_hwctx->surfaces = s->surfaces_internal;
    frames_hwctx->nb_surfaces = ctx->initial_pool_size;

    return 0;
}
