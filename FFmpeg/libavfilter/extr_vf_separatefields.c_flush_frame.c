
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_11__ {int top_field_first; int pts; } ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {TYPE_3__* src; } ;
struct TYPE_8__ {TYPE_6__* second; int nb_planes; } ;
typedef TYPE_1__ SeparateFieldsContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int extract_field (TYPE_6__*,int ,int ) ;
 int ff_filter_frame (TYPE_2__*,TYPE_6__*) ;

__attribute__((used)) static int flush_frame(AVFilterLink *outlink, int64_t pts, int64_t *out_pts)
{
    AVFilterContext *ctx = outlink->src;
    SeparateFieldsContext *s = ctx->priv;
    int ret = 0;

    if (s->second) {
        *out_pts = s->second->pts += pts;
        extract_field(s->second, s->nb_planes, s->second->top_field_first);
        ret = ff_filter_frame(outlink, s->second);
        s->second = ((void*)0);
    }

    return ret;
}
