
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double DBL_MAX ;
 double DBL_MIN ;
 double FLT_MAX ;
 double FLT_MIN ;
 scalar_t__ INT64_MAX ;
 double INT64_MIN ;
 double INT_MAX ;
 double INT_MIN ;
 double UINT32_MAX ;
 int av_log (void*,int,char*,...) ;

__attribute__((used)) static void log_value(void *av_log_obj, int level, double d)
{
    if (d == INT_MAX) {
        av_log(av_log_obj, level, "INT_MAX");
    } else if (d == INT_MIN) {
        av_log(av_log_obj, level, "INT_MIN");
    } else if (d == UINT32_MAX) {
        av_log(av_log_obj, level, "UINT32_MAX");
    } else if (d == (double)INT64_MAX) {
        av_log(av_log_obj, level, "I64_MAX");
    } else if (d == INT64_MIN) {
        av_log(av_log_obj, level, "I64_MIN");
    } else if (d == FLT_MAX) {
        av_log(av_log_obj, level, "FLT_MAX");
    } else if (d == FLT_MIN) {
        av_log(av_log_obj, level, "FLT_MIN");
    } else if (d == -FLT_MAX) {
        av_log(av_log_obj, level, "-FLT_MAX");
    } else if (d == -FLT_MIN) {
        av_log(av_log_obj, level, "-FLT_MIN");
    } else if (d == DBL_MAX) {
        av_log(av_log_obj, level, "DBL_MAX");
    } else if (d == DBL_MIN) {
        av_log(av_log_obj, level, "DBL_MIN");
    } else if (d == -DBL_MAX) {
        av_log(av_log_obj, level, "-DBL_MAX");
    } else if (d == -DBL_MIN) {
        av_log(av_log_obj, level, "-DBL_MIN");
    } else {
        av_log(av_log_obj, level, "%g", d);
    }
}
