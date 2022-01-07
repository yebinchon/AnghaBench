
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ mfxStatus ;
struct TYPE_12__ {int pix_fmt; int device_type; scalar_t__ handle_type; } ;
struct TYPE_11__ {TYPE_1__* internal; TYPE_3__* hwctx; } ;
struct TYPE_10__ {int session; } ;
struct TYPE_9__ {int ver; int impl; int handle; int child_pix_fmt; int child_device_type; scalar_t__ handle_type; } ;
struct TYPE_8__ {TYPE_2__* priv; } ;
typedef TYPE_2__ QSVDeviceContext ;
typedef TYPE_3__ AVQSVDeviceContext ;
typedef TYPE_4__ AVHWDeviceContext ;


 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 scalar_t__ MFXQueryIMPL (int ,int *) ;
 scalar_t__ MFXQueryVersion (int ,int *) ;
 scalar_t__ MFXVideoCORE_GetHandle (int ,scalar_t__,int *) ;
 scalar_t__ MFX_ERR_NONE ;
 int av_log (TYPE_4__*,int ,char*) ;
 TYPE_5__* supported_handle_types ;

__attribute__((used)) static int qsv_device_init(AVHWDeviceContext *ctx)
{
    AVQSVDeviceContext *hwctx = ctx->hwctx;
    QSVDeviceContext *s = ctx->internal->priv;

    mfxStatus err;
    int i;

    for (i = 0; supported_handle_types[i].handle_type; i++) {
        err = MFXVideoCORE_GetHandle(hwctx->session, supported_handle_types[i].handle_type,
                                     &s->handle);
        if (err == MFX_ERR_NONE) {
            s->handle_type = supported_handle_types[i].handle_type;
            s->child_device_type = supported_handle_types[i].device_type;
            s->child_pix_fmt = supported_handle_types[i].pix_fmt;
            break;
        }
    }
    if (!s->handle) {
        av_log(ctx, AV_LOG_VERBOSE, "No supported hw handle could be retrieved "
               "from the session\n");
    }

    err = MFXQueryIMPL(hwctx->session, &s->impl);
    if (err == MFX_ERR_NONE)
        err = MFXQueryVersion(hwctx->session, &s->ver);
    if (err != MFX_ERR_NONE) {
        av_log(ctx, AV_LOG_ERROR, "Error querying the session attributes\n");
        return AVERROR_UNKNOWN;
    }

    return 0;
}
