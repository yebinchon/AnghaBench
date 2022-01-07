
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVAudioServiceType { ____Placeholder_AVAudioServiceType } AVAudioServiceType ;
struct TYPE_3__ {int size; scalar_t__ data; } ;
typedef TYPE_1__ AVPacketSideData ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_LOG_WARNING ;
 int av_log (void*,int ,char*) ;

__attribute__((used)) static void dump_audioservicetype(void *ctx, AVPacketSideData *sd)
{
    enum AVAudioServiceType *ast = (enum AVAudioServiceType *)sd->data;

    if (sd->size < sizeof(*ast)) {
        av_log(ctx, AV_LOG_ERROR, "invalid data");
        return;
    }

    switch (*ast) {
    case 130:
        av_log(ctx, AV_LOG_INFO, "main");
        break;
    case 134:
        av_log(ctx, AV_LOG_INFO, "effects");
        break;
    case 129:
        av_log(ctx, AV_LOG_INFO, "visually impaired");
        break;
    case 132:
        av_log(ctx, AV_LOG_INFO, "hearing impaired");
        break;
    case 135:
        av_log(ctx, AV_LOG_INFO, "dialogue");
        break;
    case 136:
        av_log(ctx, AV_LOG_INFO, "commentary");
        break;
    case 133:
        av_log(ctx, AV_LOG_INFO, "emergency");
        break;
    case 128:
        av_log(ctx, AV_LOG_INFO, "voice over");
        break;
    case 131:
        av_log(ctx, AV_LOG_INFO, "karaoke");
        break;
    default:
        av_log(ctx, AV_LOG_WARNING, "unknown");
        break;
    }
}
