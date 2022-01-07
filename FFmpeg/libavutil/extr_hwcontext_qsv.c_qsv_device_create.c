
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int mfxIMPL ;
typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_13__ {int * value; } ;
struct TYPE_12__ {int free; TYPE_1__* user_opaque; } ;
struct TYPE_11__ {TYPE_9__* child_device_ctx; } ;
typedef TYPE_1__ QSVDevicePriv ;
typedef TYPE_2__ AVHWDeviceContext ;
typedef TYPE_3__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_HWDEVICE_TYPE_DXVA2 ;
 int AV_HWDEVICE_TYPE_VAAPI ;
 int AV_LOG_ERROR ;
 scalar_t__ CONFIG_DXVA2 ;
 scalar_t__ CONFIG_VAAPI ;
 int ENOMEM ;
 int ENOSYS ;
 int av_dict_free (int **) ;
 TYPE_3__* av_dict_get (int *,char*,int *,int ) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_hwdevice_ctx_create (TYPE_9__**,int,int *,int *,int ) ;
 int av_log (TYPE_2__*,int ,char*) ;
 TYPE_1__* av_mallocz (int) ;
 int choose_implementation (char const*) ;
 int qsv_device_derive_from_child (TYPE_2__*,int ,TYPE_2__*,int ) ;
 int qsv_device_free ;

__attribute__((used)) static int qsv_device_create(AVHWDeviceContext *ctx, const char *device,
                             AVDictionary *opts, int flags)
{
    QSVDevicePriv *priv;
    enum AVHWDeviceType child_device_type;
    AVHWDeviceContext *child_device;
    AVDictionary *child_device_opts;
    AVDictionaryEntry *e;

    mfxIMPL impl;
    int ret;

    priv = av_mallocz(sizeof(*priv));
    if (!priv)
        return AVERROR(ENOMEM);

    ctx->user_opaque = priv;
    ctx->free = qsv_device_free;

    e = av_dict_get(opts, "child_device", ((void*)0), 0);

    child_device_opts = ((void*)0);
    if (CONFIG_VAAPI) {
        child_device_type = AV_HWDEVICE_TYPE_VAAPI;





        av_dict_set(&child_device_opts, "kernel_driver", "i915", 0);
        av_dict_set(&child_device_opts, "driver", "iHD", 0);
    } else if (CONFIG_DXVA2)
        child_device_type = AV_HWDEVICE_TYPE_DXVA2;
    else {
        av_log(ctx, AV_LOG_ERROR, "No supported child device type is enabled\n");
        return AVERROR(ENOSYS);
    }

    ret = av_hwdevice_ctx_create(&priv->child_device_ctx, child_device_type,
                                 e ? e->value : ((void*)0), child_device_opts, 0);

    av_dict_free(&child_device_opts);
    if (ret < 0)
        return ret;

    child_device = (AVHWDeviceContext*)priv->child_device_ctx->data;

    impl = choose_implementation(device);

    return qsv_device_derive_from_child(ctx, impl, child_device, 0);
}
