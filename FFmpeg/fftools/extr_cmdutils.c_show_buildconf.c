
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_INFO ;
 int INDENT ;
 int av_log_set_callback (int ) ;
 int log_callback_help ;
 int print_buildconf (int,int ) ;

int show_buildconf(void *optctx, const char *opt, const char *arg)
{
    av_log_set_callback(log_callback_help);
    print_buildconf (INDENT|0, AV_LOG_INFO);

    return 0;
}
