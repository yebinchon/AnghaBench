
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * field_order; } ;
typedef TYPE_1__ ASSSplitContext ;


 int FF_ARRAY_ELEMS (int *) ;
 int * ass_sections ;
 int av_free (TYPE_1__*) ;
 int av_freep (int *) ;
 int free_section (TYPE_1__*,int *) ;

void ff_ass_split_free(ASSSplitContext *ctx)
{
    if (ctx) {
        int i;
        for (i=0; i<FF_ARRAY_ELEMS(ass_sections); i++) {
            free_section(ctx, &ass_sections[i]);
            av_freep(&(ctx->field_order[i]));
        }
        av_free(ctx);
    }
}
