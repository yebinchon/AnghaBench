
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_INFO ;
 int SHOW_COPYRIGHT ;
 int SHOW_VERSION ;
 int av_log_set_callback (int ) ;
 int log_callback_help ;
 int print_all_libs_info (int ,int ) ;
 int print_program_info (int ,int ) ;

int show_version(void *optctx, const char *opt, const char *arg)
{
    av_log_set_callback(log_callback_help);
    print_program_info (SHOW_COPYRIGHT, AV_LOG_INFO);
    print_all_libs_info(SHOW_VERSION, AV_LOG_INFO);

    return 0;
}
