
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_filters; int * filters; } ;
typedef TYPE_1__ AVFilterGraph ;


 int reduce_formats_on_filter (int ) ;

__attribute__((used)) static int reduce_formats(AVFilterGraph *graph)
{
    int i, reduced, ret;

    do {
        reduced = 0;

        for (i = 0; i < graph->nb_filters; i++) {
            if ((ret = reduce_formats_on_filter(graph->filters[i])) < 0)
                return ret;
            reduced |= ret;
        }
    } while (reduced);

    return 0;
}
