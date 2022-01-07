
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {char* name; char* long_name; char* extensions; char* mime_type; scalar_t__ video_codec; scalar_t__ audio_codec; scalar_t__ subtitle_codec; scalar_t__ priv_class; } ;
typedef TYPE_1__ AVOutputFormat ;
typedef TYPE_2__ AVCodecDescriptor ;


 scalar_t__ AV_CODEC_ID_NONE ;
 int AV_LOG_ERROR ;
 int AV_OPT_FLAG_ENCODING_PARAM ;
 TYPE_1__* av_guess_format (char const*,int *,int *) ;
 int av_log (int *,int ,char*,char const*) ;
 TYPE_2__* avcodec_descriptor_get (scalar_t__) ;
 int printf (char*,char*,...) ;
 int show_help_children (scalar_t__,int ) ;

__attribute__((used)) static void show_help_muxer(const char *name)
{
    const AVCodecDescriptor *desc;
    const AVOutputFormat *fmt = av_guess_format(name, ((void*)0), ((void*)0));

    if (!fmt) {
        av_log(((void*)0), AV_LOG_ERROR, "Unknown format '%s'.\n", name);
        return;
    }

    printf("Muxer %s [%s]:\n", fmt->name, fmt->long_name);

    if (fmt->extensions)
        printf("    Common extensions: %s.\n", fmt->extensions);
    if (fmt->mime_type)
        printf("    Mime type: %s.\n", fmt->mime_type);
    if (fmt->video_codec != AV_CODEC_ID_NONE &&
        (desc = avcodec_descriptor_get(fmt->video_codec))) {
        printf("    Default video codec: %s.\n", desc->name);
    }
    if (fmt->audio_codec != AV_CODEC_ID_NONE &&
        (desc = avcodec_descriptor_get(fmt->audio_codec))) {
        printf("    Default audio codec: %s.\n", desc->name);
    }
    if (fmt->subtitle_codec != AV_CODEC_ID_NONE &&
        (desc = avcodec_descriptor_get(fmt->subtitle_codec))) {
        printf("    Default subtitle codec: %s.\n", desc->name);
    }

    if (fmt->priv_class)
        show_help_children(fmt->priv_class, AV_OPT_FLAG_ENCODING_PARAM);
}
