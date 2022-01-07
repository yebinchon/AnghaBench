
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int nb_inputs; int nb_outputs; TYPE_1__* filter; } ;
struct TYPE_16__ {int pad_idx; TYPE_3__* filter_ctx; struct TYPE_16__* name; struct TYPE_16__* next; } ;
struct TYPE_15__ {int name; } ;
typedef TYPE_2__ AVFilterInOut ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int append_inout (TYPE_2__**,TYPE_2__**) ;
 int av_freep (TYPE_2__**) ;
 int av_log (void*,int ,char*,int ) ;
 TYPE_2__* av_mallocz (int) ;
 int insert_inout (TYPE_2__**,TYPE_2__*) ;
 int link_filter (TYPE_3__*,int,TYPE_3__*,int,void*) ;

__attribute__((used)) static int link_filter_inouts(AVFilterContext *filt_ctx,
                              AVFilterInOut **curr_inputs,
                              AVFilterInOut **open_inputs, void *log_ctx)
{
    int pad, ret;

    for (pad = 0; pad < filt_ctx->nb_inputs; pad++) {
        AVFilterInOut *p = *curr_inputs;

        if (p) {
            *curr_inputs = (*curr_inputs)->next;
            p->next = ((void*)0);
        } else if (!(p = av_mallocz(sizeof(*p))))
            return AVERROR(ENOMEM);

        if (p->filter_ctx) {
            ret = link_filter(p->filter_ctx, p->pad_idx, filt_ctx, pad, log_ctx);
            av_freep(&p->name);
            av_freep(&p);
            if (ret < 0)
                return ret;
        } else {
            p->filter_ctx = filt_ctx;
            p->pad_idx = pad;
            append_inout(open_inputs, &p);
        }
    }

    if (*curr_inputs) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Too many inputs specified for the \"%s\" filter.\n",
               filt_ctx->filter->name);
        return AVERROR(EINVAL);
    }

    pad = filt_ctx->nb_outputs;
    while (pad--) {
        AVFilterInOut *currlinkn = av_mallocz(sizeof(AVFilterInOut));
        if (!currlinkn)
            return AVERROR(ENOMEM);
        currlinkn->filter_ctx = filt_ctx;
        currlinkn->pad_idx = pad;
        insert_inout(curr_inputs, currlinkn);
    }

    return 0;
}
