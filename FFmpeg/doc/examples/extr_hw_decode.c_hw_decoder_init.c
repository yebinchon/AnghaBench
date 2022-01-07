
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_3__ {int hw_device_ctx; } ;
typedef TYPE_1__ AVCodecContext ;


 int av_buffer_ref (int ) ;
 int av_hwdevice_ctx_create (int *,int const,int *,int *,int ) ;
 int fprintf (int ,char*) ;
 int hw_device_ctx ;
 int stderr ;

__attribute__((used)) static int hw_decoder_init(AVCodecContext *ctx, const enum AVHWDeviceType type)
{
    int err = 0;

    if ((err = av_hwdevice_ctx_create(&hw_device_ctx, type,
                                      ((void*)0), ((void*)0), 0)) < 0) {
        fprintf(stderr, "Failed to create specified HW device.\n");
        return err;
    }
    ctx->hw_device_ctx = av_buffer_ref(hw_device_ctx);

    return err;
}
