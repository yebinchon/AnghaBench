
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* g; } ;
struct TYPE_4__ {int codec_opts; } ;
typedef TYPE_2__ OptionsContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 char* av_asprintf (char*,char const*) ;
 int av_dict_set (int *,char*,char const*,int ) ;
 int av_free (char*) ;
 int options ;
 int parse_option (TYPE_2__*,char*,char*,int ) ;

__attribute__((used)) static int opt_timecode(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    int ret;
    char *tcr = av_asprintf("timecode=%s", arg);
    if (!tcr)
        return AVERROR(ENOMEM);
    ret = parse_option(o, "metadata:g", tcr, options);
    if (ret >= 0)
        ret = av_dict_set(&o->g->codec_opts, "gop_timecode", arg, 0);
    av_free(tcr);
    return ret;
}
