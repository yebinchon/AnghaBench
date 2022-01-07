
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int value; struct TYPE_6__** param; } ;
typedef TYPE_1__ AVExpr ;


 TYPE_1__* av_mallocz (int) ;

__attribute__((used)) static AVExpr *make_eval_expr(int type, int value, AVExpr *p0, AVExpr *p1)
{
    AVExpr *e = av_mallocz(sizeof(AVExpr));
    if (!e)
        return ((void*)0);
    e->type =type ;
    e->value =value ;
    e->param[0] =p0 ;
    e->param[1] =p1 ;
    return e;
}
