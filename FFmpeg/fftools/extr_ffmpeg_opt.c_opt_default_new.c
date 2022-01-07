
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* g; } ;
struct TYPE_4__ {int format_opts; int codec_opts; } ;
typedef TYPE_2__ OptionsContext ;
typedef int AVDictionary ;


 int av_dict_copy (int *,int *,int ) ;
 int av_dict_free (int **) ;
 int * codec_opts ;
 int * format_opts ;
 int opt_default (int *,char const*,char const*) ;

__attribute__((used)) static int opt_default_new(OptionsContext *o, const char *opt, const char *arg)
{
    int ret;
    AVDictionary *cbak = codec_opts;
    AVDictionary *fbak = format_opts;
    codec_opts = ((void*)0);
    format_opts = ((void*)0);

    ret = opt_default(((void*)0), opt, arg);

    av_dict_copy(&o->g->codec_opts , codec_opts, 0);
    av_dict_copy(&o->g->format_opts, format_opts, 0);
    av_dict_free(&codec_opts);
    av_dict_free(&format_opts);
    codec_opts = cbak;
    format_opts = fbak;

    return ret;
}
