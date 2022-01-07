
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int metric_length; } ;
struct TYPE_5__ {void* vars; void* combs; void* diffs; } ;
typedef TYPE_1__ PullupField ;
typedef TYPE_2__ PullupContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFALIGN (int ,int) ;
 void* av_calloc (int ,int) ;
 int av_freep (void**) ;

__attribute__((used)) static int alloc_metrics(PullupContext *s, PullupField *f)
{
    f->diffs = av_calloc(FFALIGN(s->metric_length, 16), sizeof(*f->diffs));
    f->combs = av_calloc(FFALIGN(s->metric_length, 16), sizeof(*f->combs));
    f->vars = av_calloc(FFALIGN(s->metric_length, 16), sizeof(*f->vars));

    if (!f->diffs || !f->combs || !f->vars) {
        av_freep(&f->diffs);
        av_freep(&f->combs);
        av_freep(&f->vars);
        return AVERROR(ENOMEM);
    }
    return 0;
}
