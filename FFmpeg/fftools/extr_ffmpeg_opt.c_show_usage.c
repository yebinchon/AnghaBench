
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_INFO ;
 int av_log (int *,int ,char*,...) ;
 int program_name ;

void show_usage(void)
{
    av_log(((void*)0), AV_LOG_INFO, "Hyper fast Audio and Video encoder\n");
    av_log(((void*)0), AV_LOG_INFO, "usage: %s [options] [[infile options] -i infile]... {[outfile options] outfile}...\n", program_name);
    av_log(((void*)0), AV_LOG_INFO, "\n");
}
