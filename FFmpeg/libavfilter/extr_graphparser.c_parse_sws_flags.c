
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scale_sws_opts; } ;
typedef TYPE_1__ AVFilterGraph ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int av_freep (int *) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int av_mallocz (int) ;
 int av_strlcpy (int ,char const*,int) ;
 char* strchr (char const*,char) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int parse_sws_flags(const char **buf, AVFilterGraph *graph)
{
    char *p = strchr(*buf, ';');

    if (strncmp(*buf, "sws_flags=", 10))
        return 0;

    if (!p) {
        av_log(graph, AV_LOG_ERROR, "sws_flags not terminated with ';'.\n");
        return AVERROR(EINVAL);
    }

    *buf += 4;

    av_freep(&graph->scale_sws_opts);
    if (!(graph->scale_sws_opts = av_mallocz(p - *buf + 1)))
        return AVERROR(ENOMEM);
    av_strlcpy(graph->scale_sws_opts, *buf, p - *buf + 1);

    *buf = p + 1;
    return 0;
}
