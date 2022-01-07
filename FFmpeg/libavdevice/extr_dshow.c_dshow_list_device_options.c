
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dshow_ctx {int ** device_filter; } ;
typedef enum dshowSourceFilterType { ____Placeholder_dshowSourceFilterType } dshowSourceFilterType ;
typedef enum dshowDeviceType { ____Placeholder_dshowDeviceType } dshowDeviceType ;
struct TYPE_5__ {struct dshow_ctx* priv_data; } ;
typedef int ICreateDevEnum ;
typedef int IBaseFilter ;
typedef TYPE_1__ AVFormatContext ;


 int av_freep (char**) ;
 int dshow_cycle_devices (TYPE_1__*,int *,int,int,int **,char**) ;
 int dshow_cycle_pins (TYPE_1__*,int,int,int *,int *) ;

__attribute__((used)) static int
dshow_list_device_options(AVFormatContext *avctx, ICreateDevEnum *devenum,
                          enum dshowDeviceType devtype, enum dshowSourceFilterType sourcetype)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IBaseFilter *device_filter = ((void*)0);
    char *device_unique_name = ((void*)0);
    int r;

    if ((r = dshow_cycle_devices(avctx, devenum, devtype, sourcetype, &device_filter, &device_unique_name)) < 0)
        return r;
    ctx->device_filter[devtype] = device_filter;
    if ((r = dshow_cycle_pins(avctx, devtype, sourcetype, device_filter, ((void*)0))) < 0)
        return r;
    av_freep(&device_unique_name);
    return 0;
}
