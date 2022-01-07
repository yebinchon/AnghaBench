
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_4__ {char* name; int type; int * device_ref; } ;
typedef TYPE_1__ HWDevice ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_buffer_unref (int **) ;
 int av_freep (char**) ;
 int av_hwdevice_ctx_create (int **,int,char const*,int *,int ) ;
 int av_log (int *,int ,char*,int) ;
 TYPE_1__* hw_device_add () ;
 char* hw_device_default_name (int) ;

__attribute__((used)) static int hw_device_init_from_type(enum AVHWDeviceType type,
                                    const char *device,
                                    HWDevice **dev_out)
{
    AVBufferRef *device_ref = ((void*)0);
    HWDevice *dev;
    char *name;
    int err;

    name = hw_device_default_name(type);
    if (!name) {
        err = AVERROR(ENOMEM);
        goto fail;
    }

    err = av_hwdevice_ctx_create(&device_ref, type, device, ((void*)0), 0);
    if (err < 0) {
        av_log(((void*)0), AV_LOG_ERROR,
               "Device creation failed: %d.\n", err);
        goto fail;
    }

    dev = hw_device_add();
    if (!dev) {
        err = AVERROR(ENOMEM);
        goto fail;
    }

    dev->name = name;
    dev->type = type;
    dev->device_ref = device_ref;

    if (dev_out)
        *dev_out = dev;

    return 0;

fail:
    av_freep(&name);
    av_buffer_unref(&device_ref);
    return err;
}
