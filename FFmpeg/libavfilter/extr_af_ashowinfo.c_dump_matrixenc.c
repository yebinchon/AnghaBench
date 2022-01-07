
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVMatrixEncoding { ____Placeholder_AVMatrixEncoding } AVMatrixEncoding ;
struct TYPE_3__ {int size; scalar_t__ data; } ;
typedef TYPE_1__ AVFrameSideData ;
typedef int AVFilterContext ;


 int AV_LOG_INFO ;
 int AV_LOG_WARNING ;







 int av_log (int *,int ,char*) ;

__attribute__((used)) static void dump_matrixenc(AVFilterContext *ctx, AVFrameSideData *sd)
{
    enum AVMatrixEncoding enc;

    av_log(ctx, AV_LOG_INFO, "matrix encoding: ");

    if (sd->size < sizeof(enum AVMatrixEncoding)) {
        av_log(ctx, AV_LOG_INFO, "invalid data");
        return;
    }

    enc = *(enum AVMatrixEncoding *)sd->data;
    switch (enc) {
    case 128: av_log(ctx, AV_LOG_INFO, "none"); break;
    case 134: av_log(ctx, AV_LOG_INFO, "Dolby Surround"); break;
    case 131: av_log(ctx, AV_LOG_INFO, "Dolby Pro Logic II"); break;
    case 130: av_log(ctx, AV_LOG_INFO, "Dolby Pro Logic IIx"); break;
    case 129: av_log(ctx, AV_LOG_INFO, "Dolby Pro Logic IIz"); break;
    case 133: av_log(ctx, AV_LOG_INFO, "Dolby EX"); break;
    case 132: av_log(ctx, AV_LOG_INFO, "Dolby Headphone"); break;
    default: av_log(ctx, AV_LOG_WARNING, "unknown"); break;
    }
}
