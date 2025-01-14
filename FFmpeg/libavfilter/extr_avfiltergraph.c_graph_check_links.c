
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int nb_outputs; TYPE_1__** outputs; } ;
struct TYPE_7__ {unsigned int nb_filters; TYPE_3__** filters; } ;
struct TYPE_6__ {scalar_t__ type; int format; int h; int w; } ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterGraph ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVClass ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int INT64_MAX ;
 int av_image_check_size2 (int ,int ,int ,int ,int ,TYPE_3__*) ;

__attribute__((used)) static int graph_check_links(AVFilterGraph *graph, AVClass *log_ctx)
{
    AVFilterContext *f;
    AVFilterLink *l;
    unsigned i, j;
    int ret;

    for (i = 0; i < graph->nb_filters; i++) {
        f = graph->filters[i];
        for (j = 0; j < f->nb_outputs; j++) {
            l = f->outputs[j];
            if (l->type == AVMEDIA_TYPE_VIDEO) {
                ret = av_image_check_size2(l->w, l->h, INT64_MAX, l->format, 0, f);
                if (ret < 0)
                    return ret;
            }
        }
    }
    return 0;
}
