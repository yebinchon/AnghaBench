
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int device_ref; } ;
struct TYPE_7__ {TYPE_1__* enc_ctx; int enc; } ;
struct TYPE_6__ {int hw_device_ctx; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ HWDevice ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_buffer_ref (int ) ;
 TYPE_3__* hw_device_match_by_codec (int ) ;

int hw_device_setup_for_encode(OutputStream *ost)
{
    HWDevice *dev;

    dev = hw_device_match_by_codec(ost->enc);
    if (dev) {
        ost->enc_ctx->hw_device_ctx = av_buffer_ref(dev->device_ref);
        if (!ost->enc_ctx->hw_device_ctx)
            return AVERROR(ENOMEM);
        return 0;
    } else {

        return 0;
    }
}
