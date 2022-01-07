
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ VAStatus ;
typedef int VADisplay ;
struct TYPE_8__ {TYPE_1__* hwctx; } ;
struct TYPE_7__ {int display; } ;
typedef TYPE_1__ AVVAAPIDeviceContext ;
typedef TYPE_2__ AVHWDeviceContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int EIO ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_log (TYPE_2__*,int ,char*,int,int) ;
 int vaErrorStr (scalar_t__) ;
 scalar_t__ vaInitialize (int ,int*,int*) ;
 int vaSetErrorCallback (int ,int *,TYPE_2__*) ;
 int vaSetInfoCallback (int ,int *,TYPE_2__*) ;
 int vaapi_device_log_error ;
 int vaapi_device_log_info ;

__attribute__((used)) static int vaapi_device_connect(AVHWDeviceContext *ctx,
                                VADisplay display)
{
    AVVAAPIDeviceContext *hwctx = ctx->hwctx;
    int major, minor;
    VAStatus vas;






    hwctx->display = display;

    vas = vaInitialize(display, &major, &minor);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(ctx, AV_LOG_ERROR, "Failed to initialise VAAPI "
               "connection: %d (%s).\n", vas, vaErrorStr(vas));
        return AVERROR(EIO);
    }
    av_log(ctx, AV_LOG_VERBOSE, "Initialised VAAPI connection: "
           "version %d.%d\n", major, minor);

    return 0;
}
