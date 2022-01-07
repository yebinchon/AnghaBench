
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (char**) ;
 int av_log_set_callback (int ) ;
 char* av_strdup (char const*) ;
 int log_callback_help ;
 int show_help_bsf (char*) ;
 int show_help_codec (char*,int) ;
 int show_help_default (char*,char*) ;
 int show_help_demuxer (char*) ;
 int show_help_filter (char*) ;
 int show_help_muxer (char*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;

int show_help(void *optctx, const char *opt, const char *arg)
{
    char *topic, *par;
    av_log_set_callback(log_callback_help);

    topic = av_strdup(arg ? arg : "");
    if (!topic)
        return AVERROR(ENOMEM);
    par = strchr(topic, '=');
    if (par)
        *par++ = 0;

    if (!*topic) {
        show_help_default(topic, par);
    } else if (!strcmp(topic, "decoder")) {
        show_help_codec(par, 0);
    } else if (!strcmp(topic, "encoder")) {
        show_help_codec(par, 1);
    } else if (!strcmp(topic, "demuxer")) {
        show_help_demuxer(par);
    } else if (!strcmp(topic, "muxer")) {
        show_help_muxer(par);




    } else if (!strcmp(topic, "bsf")) {
        show_help_bsf(par);
    } else {
        show_help_default(topic, par);
    }

    av_freep(&topic);
    return 0;
}
