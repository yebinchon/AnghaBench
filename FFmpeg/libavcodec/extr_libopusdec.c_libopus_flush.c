
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct libopus_context {int pre_skip; int dec; } ;
struct TYPE_5__ {TYPE_1__* internal; struct libopus_context* priv_data; } ;
struct TYPE_4__ {int skip_samples; } ;
typedef TYPE_2__ AVCodecContext ;


 int OPUS_RESET_STATE ;
 int opus_multistream_decoder_ctl (int ,int ) ;

__attribute__((used)) static void libopus_flush(AVCodecContext *avc)
{
    struct libopus_context *opus = avc->priv_data;

    opus_multistream_decoder_ctl(opus->dec, OPUS_RESET_STATE);


    avc->internal->skip_samples = opus->pre_skip;
}
