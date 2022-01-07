
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int name; int sample_fmts; } ;
typedef TYPE_1__ AVCodec ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int AV_LOG_FATAL ;
 scalar_t__ av_codec_is_encoder (TYPE_1__*) ;
 TYPE_1__* av_codec_next (TYPE_1__*) ;
 int av_log (int *,int ,char*,int ) ;

int main(void){
    AVCodec *codec = ((void*)0);
    int ret = 0;

    while (codec = av_codec_next(codec)) {
        if (av_codec_is_encoder(codec)) {
            if (codec->type == AVMEDIA_TYPE_AUDIO) {
                if (!codec->sample_fmts) {
                    av_log(((void*)0), AV_LOG_FATAL, "Encoder %s is missing the sample_fmts field\n", codec->name);
                    ret = 1;
                }
            }
        }
    }
    return ret;
}
