
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef int AVFormatContext ;
typedef TYPE_1__ AVCodecDescriptor ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOSYS ;
 int av_log (int *,int ,char*,char const*,char*) ;
 TYPE_1__* avcodec_descriptor_get (int) ;

__attribute__((used)) static int unsupported_codec(AVFormatContext *s,
                             const char* type, int codec_id)
{
    const AVCodecDescriptor *desc = avcodec_descriptor_get(codec_id);
    av_log(s, AV_LOG_ERROR,
           "%s codec %s not compatible with flv\n",
            type,
            desc ? desc->name : "unknown");
    return AVERROR(ENOSYS);
}
