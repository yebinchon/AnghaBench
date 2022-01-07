
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_10__ {int type; int name; } ;
struct TYPE_9__ {int name; int id; } ;
typedef TYPE_1__ AVCodecDescriptor ;
typedef TYPE_2__ AVCodec ;


 int AV_LOG_FATAL ;
 int AV_LOG_VERBOSE ;
 int av_log (int *,int ,char*,char const*,char const*,...) ;
 TYPE_1__* avcodec_descriptor_get_by_name (char const*) ;
 TYPE_2__* avcodec_find_decoder (int ) ;
 TYPE_2__* avcodec_find_decoder_by_name (char const*) ;
 TYPE_2__* avcodec_find_encoder (int ) ;
 TYPE_2__* avcodec_find_encoder_by_name (char const*) ;
 int exit_program (int) ;

__attribute__((used)) static AVCodec *find_codec_or_die(const char *name, enum AVMediaType type, int encoder)
{
    const AVCodecDescriptor *desc;
    const char *codec_string = encoder ? "encoder" : "decoder";
    AVCodec *codec;

    codec = encoder ?
        avcodec_find_encoder_by_name(name) :
        avcodec_find_decoder_by_name(name);

    if (!codec && (desc = avcodec_descriptor_get_by_name(name))) {
        codec = encoder ? avcodec_find_encoder(desc->id) :
                          avcodec_find_decoder(desc->id);
        if (codec)
            av_log(((void*)0), AV_LOG_VERBOSE, "Matched %s '%s' for codec '%s'.\n",
                   codec_string, codec->name, desc->name);
    }

    if (!codec) {
        av_log(((void*)0), AV_LOG_FATAL, "Unknown %s '%s'\n", codec_string, name);
        exit_program(1);
    }
    if (codec->type != type) {
        av_log(((void*)0), AV_LOG_FATAL, "Invalid %s type '%s'\n", codec_string, name);
        exit_program(1);
    }
    return codec;
}
