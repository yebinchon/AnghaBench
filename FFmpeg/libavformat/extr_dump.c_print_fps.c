
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int AV_LOG_INFO ;
 int av_log (int *,int ,char*,double,char const*) ;
 int lrintf (double) ;

__attribute__((used)) static void print_fps(double d, const char *postfix)
{
    uint64_t v = lrintf(d * 100);
    if (!v)
        av_log(((void*)0), AV_LOG_INFO, "%1.4f %s", d, postfix);
    else if (v % 100)
        av_log(((void*)0), AV_LOG_INFO, "%3.2f %s", d, postfix);
    else if (v % (100 * 1000))
        av_log(((void*)0), AV_LOG_INFO, "%1.0f %s", d, postfix);
    else
        av_log(((void*)0), AV_LOG_INFO, "%1.0fk %s", d / 1000, postfix);
}
