
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_OPT_FLAG_DECODING_PARAM ;
 int av_log_set_callback (int ) ;
 int avcodec_get_class () ;
 int avformat_get_class () ;
 int log_callback_help ;
 int options ;
 int printf (char*) ;
 int show_help_children (int ,int ) ;
 int show_help_options (int ,char*,int ,int ,int ) ;
 int show_usage () ;

void show_help_default(const char *opt, const char *arg)
{
    av_log_set_callback(log_callback_help);
    show_usage();
    show_help_options(options, "Main options:", 0, 0, 0);
    printf("\n");

    show_help_children(avformat_get_class(), AV_OPT_FLAG_DECODING_PARAM);
    show_help_children(avcodec_get_class(), AV_OPT_FLAG_DECODING_PARAM);
}
