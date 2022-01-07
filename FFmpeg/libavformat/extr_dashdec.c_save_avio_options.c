
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_5__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int avio_opts; } ;
typedef TYPE_1__ DASHContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_DICT_DONT_STRDUP_VAL ;
 int AV_OPT_SEARCH_CHILDREN ;
 int av_dict_set (int *,char const*,char*,int ) ;
 int av_freep (char**) ;
 scalar_t__ av_opt_get (int ,char const*,int ,char**) ;

__attribute__((used)) static int save_avio_options(AVFormatContext *s)
{
    DASHContext *c = s->priv_data;
    const char *opts[] = {
        "headers", "user_agent", "cookies", "http_proxy", "referer", "rw_timeout", ((void*)0) };
    const char **opt = opts;
    uint8_t *buf = ((void*)0);
    int ret = 0;

    while (*opt) {
        if (av_opt_get(s->pb, *opt, AV_OPT_SEARCH_CHILDREN, &buf) >= 0) {
            if (buf[0] != '\0') {
                ret = av_dict_set(&c->avio_opts, *opt, buf, AV_DICT_DONT_STRDUP_VAL);
                if (ret < 0) {
                    av_freep(&buf);
                    return ret;
                }
            } else {
                av_freep(&buf);
            }
        }
        opt++;
    }

    return ret;
}
