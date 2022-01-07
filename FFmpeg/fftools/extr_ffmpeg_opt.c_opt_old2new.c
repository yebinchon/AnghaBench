
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OptionsContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 char* av_asprintf (char*,char const*,char const) ;
 int av_free (char*) ;
 int options ;
 int parse_option (int *,char*,char const*,int ) ;

__attribute__((used)) static int opt_old2new(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    int ret;
    char *s = av_asprintf("%s:%c", opt + 1, *opt);
    if (!s)
        return AVERROR(ENOMEM);
    ret = parse_option(o, s, arg, options);
    av_free(s);
    return ret;
}
