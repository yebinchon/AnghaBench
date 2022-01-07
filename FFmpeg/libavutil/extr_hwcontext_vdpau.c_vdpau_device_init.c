
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VdpStatus ;
struct TYPE_8__ {int surf_destroy; int surf_create; int put_data; int get_data; int get_transfer_caps; } ;
typedef TYPE_2__ VDPAUDeviceContext ;
struct TYPE_9__ {TYPE_1__* internal; int * hwctx; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef int AVVDPAUDeviceContext ;
typedef TYPE_3__ AVHWDeviceContext ;


 int AV_LOG_ERROR ;
 int GET_CALLBACK (int ,int ) ;
 int VDP_FUNC_ID_VIDEO_SURFACE_CREATE ;
 int VDP_FUNC_ID_VIDEO_SURFACE_DESTROY ;
 int VDP_FUNC_ID_VIDEO_SURFACE_GET_BITS_Y_CB_CR ;
 int VDP_FUNC_ID_VIDEO_SURFACE_PUT_BITS_Y_CB_CR ;
 int VDP_FUNC_ID_VIDEO_SURFACE_QUERY_GET_PUT_BITS_Y_CB_CR_CAPABILITIES ;
 int av_log (TYPE_3__*,int ,char*) ;
 int vdpau_init_pixmfts (TYPE_3__*) ;

__attribute__((used)) static int vdpau_device_init(AVHWDeviceContext *ctx)
{
    AVVDPAUDeviceContext *hwctx = ctx->hwctx;
    VDPAUDeviceContext *priv = ctx->internal->priv;
    VdpStatus err;
    int ret;

    GET_CALLBACK(VDP_FUNC_ID_VIDEO_SURFACE_QUERY_GET_PUT_BITS_Y_CB_CR_CAPABILITIES,
                 priv->get_transfer_caps);
    GET_CALLBACK(VDP_FUNC_ID_VIDEO_SURFACE_GET_BITS_Y_CB_CR, priv->get_data);
    GET_CALLBACK(VDP_FUNC_ID_VIDEO_SURFACE_PUT_BITS_Y_CB_CR, priv->put_data);
    GET_CALLBACK(VDP_FUNC_ID_VIDEO_SURFACE_CREATE, priv->surf_create);
    GET_CALLBACK(VDP_FUNC_ID_VIDEO_SURFACE_DESTROY, priv->surf_destroy);

    ret = vdpau_init_pixmfts(ctx);
    if (ret < 0) {
        av_log(ctx, AV_LOG_ERROR, "Error querying the supported pixel formats\n");
        return ret;
    }

    return 0;
}
