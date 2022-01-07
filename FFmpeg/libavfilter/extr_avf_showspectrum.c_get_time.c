
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;


 char* av_asprintf (char*,...) ;
 int log10 (float) ;

__attribute__((used)) static char *get_time(AVFilterContext *ctx, float seconds, int x)
{
    char *units;

    if (x == 0)
        units = av_asprintf("0");
    else if (log10(seconds) > 6)
        units = av_asprintf("%.2fh", seconds / (60 * 60));
    else if (log10(seconds) > 3)
        units = av_asprintf("%.2fm", seconds / 60);
    else
        units = av_asprintf("%.2fs", seconds);
    return units;
}
