
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ format; TYPE_1__* in_formats; } ;
struct TYPE_9__ {int nb_inputs; int nb_outputs; TYPE_5__** outputs; TYPE_5__** inputs; } ;
struct TYPE_8__ {int nb_filters; TYPE_3__** filters; } ;
struct TYPE_7__ {int nb_formats; } ;
typedef TYPE_2__ AVFilterGraph ;
typedef TYPE_3__ AVFilterContext ;


 int pick_format (TYPE_5__*,TYPE_5__*) ;

__attribute__((used)) static int pick_formats(AVFilterGraph *graph)
{
    int i, j, ret;
    int change;

    do{
        change = 0;
        for (i = 0; i < graph->nb_filters; i++) {
            AVFilterContext *filter = graph->filters[i];
            if (filter->nb_inputs){
                for (j = 0; j < filter->nb_inputs; j++){
                    if(filter->inputs[j]->in_formats && filter->inputs[j]->in_formats->nb_formats == 1) {
                        if ((ret = pick_format(filter->inputs[j], ((void*)0))) < 0)
                            return ret;
                        change = 1;
                    }
                }
            }
            if (filter->nb_outputs){
                for (j = 0; j < filter->nb_outputs; j++){
                    if(filter->outputs[j]->in_formats && filter->outputs[j]->in_formats->nb_formats == 1) {
                        if ((ret = pick_format(filter->outputs[j], ((void*)0))) < 0)
                            return ret;
                        change = 1;
                    }
                }
            }
            if (filter->nb_inputs && filter->nb_outputs && filter->inputs[0]->format>=0) {
                for (j = 0; j < filter->nb_outputs; j++) {
                    if(filter->outputs[j]->format<0) {
                        if ((ret = pick_format(filter->outputs[j], filter->inputs[0])) < 0)
                            return ret;
                        change = 1;
                    }
                }
            }
        }
    }while(change);

    for (i = 0; i < graph->nb_filters; i++) {
        AVFilterContext *filter = graph->filters[i];

        for (j = 0; j < filter->nb_inputs; j++)
            if ((ret = pick_format(filter->inputs[j], ((void*)0))) < 0)
                return ret;
        for (j = 0; j < filter->nb_outputs; j++)
            if ((ret = pick_format(filter->outputs[j], ((void*)0))) < 0)
                return ret;
    }
    return 0;
}
