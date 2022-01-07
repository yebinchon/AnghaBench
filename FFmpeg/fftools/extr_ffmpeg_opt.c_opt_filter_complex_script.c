
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int index; int * graph_desc; } ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GROW_ARRAY (TYPE_1__**,int) ;
 TYPE_1__* av_mallocz (int) ;
 TYPE_1__** filtergraphs ;
 int input_stream_potentially_available ;
 int nb_filtergraphs ;
 int * read_file (char const*) ;

__attribute__((used)) static int opt_filter_complex_script(void *optctx, const char *opt, const char *arg)
{
    uint8_t *graph_desc = read_file(arg);
    if (!graph_desc)
        return AVERROR(EINVAL);

    GROW_ARRAY(filtergraphs, nb_filtergraphs);
    if (!(filtergraphs[nb_filtergraphs - 1] = av_mallocz(sizeof(*filtergraphs[0]))))
        return AVERROR(ENOMEM);
    filtergraphs[nb_filtergraphs - 1]->index = nb_filtergraphs - 1;
    filtergraphs[nb_filtergraphs - 1]->graph_desc = graph_desc;

    input_stream_potentially_available = 1;

    return 0;
}
