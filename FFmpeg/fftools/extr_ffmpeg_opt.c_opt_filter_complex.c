
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; int graph_desc; } ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int GROW_ARRAY (TYPE_1__**,int) ;
 TYPE_1__* av_mallocz (int) ;
 int av_strdup (char const*) ;
 TYPE_1__** filtergraphs ;
 int input_stream_potentially_available ;
 int nb_filtergraphs ;

__attribute__((used)) static int opt_filter_complex(void *optctx, const char *opt, const char *arg)
{
    GROW_ARRAY(filtergraphs, nb_filtergraphs);
    if (!(filtergraphs[nb_filtergraphs - 1] = av_mallocz(sizeof(*filtergraphs[0]))))
        return AVERROR(ENOMEM);
    filtergraphs[nb_filtergraphs - 1]->index = nb_filtergraphs - 1;
    filtergraphs[nb_filtergraphs - 1]->graph_desc = av_strdup(arg);
    if (!filtergraphs[nb_filtergraphs - 1]->graph_desc)
        return AVERROR(ENOMEM);

    input_stream_potentially_available = 1;

    return 0;
}
