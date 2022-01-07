
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ AVCodecDescriptor ;
typedef int AVCodec ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,...) ;
 TYPE_1__* avcodec_descriptor_get_by_name (char const*) ;
 int * avcodec_find_decoder_by_name (char const*) ;
 int * avcodec_find_encoder_by_name (char const*) ;
 int * next_codec_for_id (int ,int const*,int) ;
 int print_codec (int const*) ;

__attribute__((used)) static void show_help_codec(const char *name, int encoder)
{
    const AVCodecDescriptor *desc;
    const AVCodec *codec;

    if (!name) {
        av_log(((void*)0), AV_LOG_ERROR, "No codec name specified.\n");
        return;
    }

    codec = encoder ? avcodec_find_encoder_by_name(name) :
                      avcodec_find_decoder_by_name(name);

    if (codec)
        print_codec(codec);
    else if ((desc = avcodec_descriptor_get_by_name(name))) {
        int printed = 0;

        while ((codec = next_codec_for_id(desc->id, codec, encoder))) {
            printed = 1;
            print_codec(codec);
        }

        if (!printed) {
            av_log(((void*)0), AV_LOG_ERROR, "Codec '%s' is known to FFmpeg, "
                   "but no %s for it are available. FFmpeg might need to be "
                   "recompiled with additional external libraries.\n",
                   name, encoder ? "encoders" : "decoders");
        }
    } else {
        av_log(((void*)0), AV_LOG_ERROR, "Codec '%s' is not recognized by FFmpeg.\n",
               name);
    }
}
