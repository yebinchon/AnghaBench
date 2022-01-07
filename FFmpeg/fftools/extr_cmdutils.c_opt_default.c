
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SwsContext {int dummy; } ;
typedef struct SwsContext SwrContext ;
typedef int opt_stripped ;
typedef int AVOption ;
typedef int AVClass ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;
 int AV_OPT_SEARCH_CHILDREN ;
 int AV_OPT_SEARCH_FAKE_OBJ ;
 int EINVAL ;
 int FFMIN (int,int) ;
 int FLAGS ;
 int av_dict_set (int *,char const*,char const*,int ) ;
 int av_log (int *,int ,char*,...) ;
 int av_log_set_level (int ) ;
 int av_opt_set (struct SwsContext*,char const*,char const*,int ) ;
 int av_strlcpy (char*,char const*,int ) ;
 int * avcodec_get_class () ;
 int * avformat_get_class () ;
 int * avresample_get_class () ;
 int codec_opts ;
 int format_opts ;
 int * opt_find (int const**,char const*,int *,int ,int) ;
 int resample_opts ;
 char* strchr (char const*,char) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 struct SwsContext* swr_alloc () ;
 int swr_free (struct SwsContext**) ;
 int * swr_get_class () ;
 int swr_opts ;
 struct SwsContext* sws_alloc_context () ;
 int sws_dict ;
 int sws_freeContext (struct SwsContext*) ;
 int * sws_get_class () ;

int opt_default(void *optctx, const char *opt, const char *arg)
{
    const AVOption *o;
    int consumed = 0;
    char opt_stripped[128];
    const char *p;
    const AVClass *cc = avcodec_get_class(), *fc = avformat_get_class();
    if (!strcmp(opt, "debug") || !strcmp(opt, "fdebug"))
        av_log_set_level(AV_LOG_DEBUG);

    if (!(p = strchr(opt, ':')))
        p = opt + strlen(opt);
    av_strlcpy(opt_stripped, opt, FFMIN(sizeof(opt_stripped), p - opt + 1));

    if ((o = opt_find(&cc, opt_stripped, ((void*)0), 0,
                         AV_OPT_SEARCH_CHILDREN | AV_OPT_SEARCH_FAKE_OBJ)) ||
        ((opt[0] == 'v' || opt[0] == 'a' || opt[0] == 's') &&
         (o = opt_find(&cc, opt + 1, ((void*)0), 0, AV_OPT_SEARCH_FAKE_OBJ)))) {
        av_dict_set(&codec_opts, opt, arg, FLAGS);
        consumed = 1;
    }
    if ((o = opt_find(&fc, opt, ((void*)0), 0,
                         AV_OPT_SEARCH_CHILDREN | AV_OPT_SEARCH_FAKE_OBJ))) {
        av_dict_set(&format_opts, opt, arg, FLAGS);
        if (consumed)
            av_log(((void*)0), AV_LOG_VERBOSE, "Routing option %s to both codec and muxer layer\n", opt);
        consumed = 1;
    }
    if (!consumed && !strcmp(opt, "sws_flags")) {
        av_log(((void*)0), AV_LOG_WARNING, "Ignoring %s %s, due to disabled swscale\n", opt, arg);
        consumed = 1;
    }
    if (consumed)
        return 0;
    return AVERROR_OPTION_NOT_FOUND;
}
