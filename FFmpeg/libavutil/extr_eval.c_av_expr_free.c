
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* var; struct TYPE_4__** param; } ;
typedef TYPE_1__ AVExpr ;


 int av_freep (TYPE_1__**) ;

void av_expr_free(AVExpr *e)
{
    if (!e) return;
    av_expr_free(e->param[0]);
    av_expr_free(e->param[1]);
    av_expr_free(e->param[2]);
    av_freep(&e->var);
    av_freep(&e);
}
