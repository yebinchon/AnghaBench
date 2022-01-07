
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVAudioServiceType { ____Placeholder_AVAudioServiceType } AVAudioServiceType ;
struct TYPE_3__ {int size; scalar_t__ data; } ;
typedef TYPE_1__ AVFrameSideData ;
typedef int AVFilterContext ;
 int AV_LOG_INFO ;
 int av_log (int *,int ,char*) ;

__attribute__((used)) static void dump_audio_service_type(AVFilterContext *ctx, AVFrameSideData *sd)
{
    enum AVAudioServiceType *ast;

    av_log(ctx, AV_LOG_INFO, "audio service type: ");
    if (sd->size < sizeof(*ast)) {
        av_log(ctx, AV_LOG_INFO, "invalid data");
        return;
    }
    ast = (enum AVAudioServiceType*)sd->data;
    switch (*ast) {
    case 130: av_log(ctx, AV_LOG_INFO, "Main Audio Service"); break;
    case 134: av_log(ctx, AV_LOG_INFO, "Effects"); break;
    case 129: av_log(ctx, AV_LOG_INFO, "Visually Impaired"); break;
    case 132: av_log(ctx, AV_LOG_INFO, "Hearing Impaired"); break;
    case 135: av_log(ctx, AV_LOG_INFO, "Dialogue"); break;
    case 136: av_log(ctx, AV_LOG_INFO, "Commentary"); break;
    case 133: av_log(ctx, AV_LOG_INFO, "Emergency"); break;
    case 128: av_log(ctx, AV_LOG_INFO, "Voice Over"); break;
    case 131: av_log(ctx, AV_LOG_INFO, "Karaoke"); break;
    default: av_log(ctx, AV_LOG_INFO, "unknown"); break;
    }
}
