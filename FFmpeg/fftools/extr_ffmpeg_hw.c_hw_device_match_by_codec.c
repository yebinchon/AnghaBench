
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int methods; int device_type; } ;
typedef int HWDevice ;
typedef TYPE_1__ AVCodecHWConfig ;
typedef int AVCodec ;


 int AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX ;
 TYPE_1__* avcodec_get_hw_config (int const*,int) ;
 int * hw_device_get_by_type (int ) ;

__attribute__((used)) static HWDevice *hw_device_match_by_codec(const AVCodec *codec)
{
    const AVCodecHWConfig *config;
    HWDevice *dev;
    int i;
    for (i = 0;; i++) {
        config = avcodec_get_hw_config(codec, i);
        if (!config)
            return ((void*)0);
        if (!(config->methods & AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX))
            continue;
        dev = hw_device_get_by_type(config->device_type);
        if (dev)
            return dev;
    }
}
