
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int h; TYPE_1__* dst; } ;
struct TYPE_11__ {int* linesize; scalar_t__* data; scalar_t__ interlaced_frame; int height; } ;
struct TYPE_10__ {int nb_planes; scalar_t__ type; } ;
struct TYPE_9__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ FieldContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;


 scalar_t__ FIELD_TYPE_BOTTOM ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *inpicref)
{
    FieldContext *field = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    int i;

    inpicref->height = outlink->h;
    inpicref->interlaced_frame = 0;

    for (i = 0; i < field->nb_planes; i++) {
        if (field->type == FIELD_TYPE_BOTTOM)
            inpicref->data[i] = inpicref->data[i] + inpicref->linesize[i];
        inpicref->linesize[i] = 2 * inpicref->linesize[i];
    }
    return ff_filter_frame(outlink, inpicref);
}
