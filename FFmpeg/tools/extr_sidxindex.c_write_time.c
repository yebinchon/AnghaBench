
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef enum AVRounding { ____Placeholder_AVRounding } AVRounding ;
typedef int FILE ;


 int AV_TIME_BASE ;
 int av_rescale_rnd (int,int ,int,int) ;
 int fprintf (int *,char*,...) ;
 int pow (int,int) ;

__attribute__((used)) static void write_time(FILE *out, int64_t time, int decimals, enum AVRounding round)
{
    int seconds = time / AV_TIME_BASE;
    int fractions = time % AV_TIME_BASE;
    int minutes = seconds / 60;
    int hours = minutes / 60;
    fractions = av_rescale_rnd(fractions, pow(10, decimals), AV_TIME_BASE, round);
    seconds %= 60;
    minutes %= 60;
    fprintf(out, "PT");
    if (hours)
        fprintf(out, "%dH", hours);
    if (hours || minutes)
        fprintf(out, "%dM", minutes);
    fprintf(out, "%d.%0*dS", seconds, decimals, fractions);
}
