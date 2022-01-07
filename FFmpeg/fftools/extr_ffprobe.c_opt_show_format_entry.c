
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 char* av_asprintf (char*,char const*) ;
 int av_free (char*) ;
 int av_log (int *,int ,char*,char const*,char const*) ;
 int opt_show_entries (void*,char const*,char*) ;

__attribute__((used)) static int opt_show_format_entry(void *optctx, const char *opt, const char *arg)
{
    char *buf = av_asprintf("format=%s", arg);
    int ret;

    if (!buf)
        return AVERROR(ENOMEM);

    av_log(((void*)0), AV_LOG_WARNING,
           "Option '%s' is deprecated, use '-show_entries format=%s' instead\n",
           opt, arg);
    ret = opt_show_entries(optctx, opt, buf);
    av_free(buf);
    return ret;
}
