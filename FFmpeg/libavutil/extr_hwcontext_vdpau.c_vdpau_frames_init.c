
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int VdpVideoSurface ;
struct TYPE_15__ {int chroma_idx; int nb_pix_fmts; int put_data; int get_data; int pix_fmts; int chroma_type; } ;
typedef TYPE_4__ VDPAUFramesContext ;
struct TYPE_16__ {int* nb_pix_fmts; int put_data; int get_data; int * pix_fmts; } ;
typedef TYPE_5__ VDPAUDeviceContext ;
struct TYPE_18__ {scalar_t__ frames_sw_format; int chroma_type; } ;
struct TYPE_17__ {scalar_t__ sw_format; TYPE_3__* internal; int pool; TYPE_2__* device_ctx; } ;
struct TYPE_14__ {int pool_internal; TYPE_4__* priv; } ;
struct TYPE_13__ {TYPE_1__* internal; } ;
struct TYPE_12__ {TYPE_5__* priv; } ;
typedef TYPE_6__ AVHWFramesContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int ENOSYS ;
 int FF_ARRAY_ELEMS (TYPE_7__*) ;
 int av_buffer_pool_init2 (int,TYPE_6__*,int ,int *) ;
 int av_get_pix_fmt_name (scalar_t__) ;
 int av_log (TYPE_6__*,int ,char*,int ) ;
 TYPE_7__* vdpau_pix_fmts ;
 int vdpau_pool_alloc ;

__attribute__((used)) static int vdpau_frames_init(AVHWFramesContext *ctx)
{
    VDPAUDeviceContext *device_priv = ctx->device_ctx->internal->priv;
    VDPAUFramesContext *priv = ctx->internal->priv;

    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(vdpau_pix_fmts); i++) {
        if (vdpau_pix_fmts[i].frames_sw_format == ctx->sw_format) {
            priv->chroma_type = vdpau_pix_fmts[i].chroma_type;
            priv->chroma_idx = i;
            priv->pix_fmts = device_priv->pix_fmts[i];
            priv->nb_pix_fmts = device_priv->nb_pix_fmts[i];
            break;
        }
    }
    if (priv->nb_pix_fmts < 2) {
        av_log(ctx, AV_LOG_ERROR, "Unsupported sw format: %s\n",
               av_get_pix_fmt_name(ctx->sw_format));
        return AVERROR(ENOSYS);
    }

    if (!ctx->pool) {
        ctx->internal->pool_internal = av_buffer_pool_init2(sizeof(VdpVideoSurface), ctx,
                                                            vdpau_pool_alloc, ((void*)0));
        if (!ctx->internal->pool_internal)
            return AVERROR(ENOMEM);
    }

    priv->get_data = device_priv->get_data;
    priv->put_data = device_priv->put_data;

    return 0;
}
