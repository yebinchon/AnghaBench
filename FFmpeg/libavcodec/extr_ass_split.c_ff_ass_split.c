
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int current_section; } ;
typedef TYPE_1__ ASSSplitContext ;


 scalar_t__ ass_split (TYPE_1__*,char const*) ;
 TYPE_1__* av_mallocz (int) ;
 int ff_ass_split_free (TYPE_1__*) ;

ASSSplitContext *ff_ass_split(const char *buf)
{
    ASSSplitContext *ctx = av_mallocz(sizeof(*ctx));
    if (!ctx)
        return ((void*)0);
    ctx->current_section = -1;
    if (ass_split(ctx, buf) < 0) {
        ff_ass_split_free(ctx);
        return ((void*)0);
    }
    return ctx;
}
