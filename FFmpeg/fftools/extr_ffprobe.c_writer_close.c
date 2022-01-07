
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* priv; TYPE_1__* writer; int * section_pbuf; } ;
typedef TYPE_2__ WriterContext ;
struct TYPE_7__ {scalar_t__ priv_class; int (* uninit ) (TYPE_2__*) ;} ;


 int SECTION_MAX_NB_LEVELS ;
 int av_bprint_finalize (int *,int *) ;
 int av_freep (TYPE_2__**) ;
 int av_opt_free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void writer_close(WriterContext **wctx)
{
    int i;

    if (!*wctx)
        return;

    if ((*wctx)->writer->uninit)
        (*wctx)->writer->uninit(*wctx);
    for (i = 0; i < SECTION_MAX_NB_LEVELS; i++)
        av_bprint_finalize(&(*wctx)->section_pbuf[i], ((void*)0));
    if ((*wctx)->writer->priv_class)
        av_opt_free((*wctx)->priv);
    av_freep(&((*wctx)->priv));
    av_opt_free(*wctx);
    av_freep(wctx);
}
