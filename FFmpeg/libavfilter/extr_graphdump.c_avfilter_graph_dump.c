
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
typedef int AVFilterGraph ;
typedef TYPE_1__ AVBPrint ;


 scalar_t__ AV_BPRINT_SIZE_COUNT_ONLY ;
 int av_bprint_finalize (TYPE_1__*,char**) ;
 int av_bprint_init (TYPE_1__*,scalar_t__,scalar_t__) ;
 int avfilter_graph_dump_to_buf (TYPE_1__*,int *) ;

char *avfilter_graph_dump(AVFilterGraph *graph, const char *options)
{
    AVBPrint buf;
    char *dump;

    av_bprint_init(&buf, 0, AV_BPRINT_SIZE_COUNT_ONLY);
    avfilter_graph_dump_to_buf(&buf, graph);
    av_bprint_init(&buf, buf.len + 1, buf.len + 1);
    avfilter_graph_dump_to_buf(&buf, graph);
    av_bprint_finalize(&buf, &dump);
    return dump;
}
