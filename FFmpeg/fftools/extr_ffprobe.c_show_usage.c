
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_INFO ;
 int av_log (int *,int ,char*,...) ;
 int program_name ;

__attribute__((used)) static void show_usage(void)
{
    av_log(((void*)0), AV_LOG_INFO, "Simple multimedia streams analyzer\n");
    av_log(((void*)0), AV_LOG_INFO, "usage: %s [OPTIONS] [INPUT_FILE]\n", program_name);
    av_log(((void*)0), AV_LOG_INFO, "\n");
}
