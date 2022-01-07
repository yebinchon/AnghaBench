
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int member_0; int member_1; } ;
struct TYPE_13__ {int Minor; int Major; TYPE_1__ member_0; } ;
typedef TYPE_2__ mfxVersion ;
typedef scalar_t__ mfxStatus ;
typedef int mfxIMPL ;
typedef int mfxHandleType ;
typedef int mfxHDL ;
struct TYPE_15__ {int type; TYPE_3__* hwctx; } ;
struct TYPE_14__ {scalar_t__ session; int devmgr; int display; } ;
typedef TYPE_3__ AVVAAPIDeviceContext ;
typedef TYPE_3__ AVQSVDeviceContext ;
typedef TYPE_5__ AVHWDeviceContext ;
typedef TYPE_3__ AVDXVA2DeviceContext ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;


 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int ENOSYS ;
 int MFXClose (scalar_t__) ;
 scalar_t__ MFXInit (int ,TYPE_2__*,scalar_t__*) ;
 scalar_t__ MFXQueryVersion (scalar_t__,TYPE_2__*) ;
 scalar_t__ MFXVideoCORE_SetHandle (scalar_t__,int ,int ) ;
 scalar_t__ MFX_ERR_NONE ;
 int MFX_HANDLE_D3D9_DEVICE_MANAGER ;
 int MFX_HANDLE_VA_DISPLAY ;
 int MFX_VERSION_MAJOR ;
 int MFX_VERSION_MINOR ;
 int av_log (TYPE_5__*,int ,char*,scalar_t__,...) ;

__attribute__((used)) static int qsv_device_derive_from_child(AVHWDeviceContext *ctx,
                                        mfxIMPL implementation,
                                        AVHWDeviceContext *child_device_ctx,
                                        int flags)
{
    AVQSVDeviceContext *hwctx = ctx->hwctx;

    mfxVersion ver = { { 3, 1 } };
    mfxHDL handle;
    mfxHandleType handle_type;
    mfxStatus err;
    int ret;

    switch (child_device_ctx->type) {
    default:
        ret = AVERROR(ENOSYS);
        goto fail;
    }

    err = MFXInit(implementation, &ver, &hwctx->session);
    if (err != MFX_ERR_NONE) {
        av_log(ctx, AV_LOG_ERROR, "Error initializing an MFX session: "
               "%d.\n", err);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    err = MFXQueryVersion(hwctx->session, &ver);
    if (err != MFX_ERR_NONE) {
        av_log(ctx, AV_LOG_ERROR, "Error querying an MFX session: %d.\n", err);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    av_log(ctx, AV_LOG_VERBOSE,
           "Initialize MFX session: API version is %d.%d, implementation version is %d.%d\n",
           MFX_VERSION_MAJOR, MFX_VERSION_MINOR, ver.Major, ver.Minor);

    MFXClose(hwctx->session);

    err = MFXInit(implementation, &ver, &hwctx->session);
    if (err != MFX_ERR_NONE) {
        av_log(ctx, AV_LOG_ERROR,
               "Error initializing an MFX session: %d.\n", err);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    err = MFXVideoCORE_SetHandle(hwctx->session, handle_type, handle);
    if (err != MFX_ERR_NONE) {
        av_log(ctx, AV_LOG_ERROR, "Error setting child device handle: "
               "%d\n", err);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    return 0;

fail:
    if (hwctx->session)
        MFXClose(hwctx->session);
    return ret;
}
