
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stack_index; char* s; } ;
typedef TYPE_1__ Parser ;
typedef int AVExpr ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int av_expr_free (int *) ;
 int e_last ;
 int * make_eval_expr (int ,int,int *,int *) ;
 int parse_subexpr (int **,TYPE_1__*) ;

__attribute__((used)) static int parse_expr(AVExpr **e, Parser *p)
{
    int ret;
    AVExpr *e0, *e1, *e2;
    if (p->stack_index <= 0)
        return AVERROR(EINVAL);
    p->stack_index--;

    if ((ret = parse_subexpr(&e0, p)) < 0)
        return ret;
    while (*p->s == ';') {
        p->s++;
        e1 = e0;
        if ((ret = parse_subexpr(&e2, p)) < 0) {
            av_expr_free(e1);
            return ret;
        }
        e0 = make_eval_expr(e_last, 1, e1, e2);
        if (!e0) {
            av_expr_free(e1);
            av_expr_free(e2);
            return AVERROR(ENOMEM);
        }
    };

    p->stack_index++;
    *e = e0;
    return 0;
}
