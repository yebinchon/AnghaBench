
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int AVFilterContext ;


 int AV_LOG_INFO ;
 float UINT32_MAX ;
 int av_log (int *,int ,char*,...) ;

__attribute__((used)) static void print_peak(AVFilterContext *ctx, const char *str, uint32_t peak)
{
    av_log(ctx, AV_LOG_INFO, "%s - ", str);
    if (!peak)
        av_log(ctx, AV_LOG_INFO, "unknown");
    else
        av_log(ctx, AV_LOG_INFO, "%f", (float)peak / UINT32_MAX);
    av_log(ctx, AV_LOG_INFO, ", ");
}
