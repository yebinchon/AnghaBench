
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* s; } ;
typedef TYPE_1__ Parser ;
typedef int AVExpr ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_expr_free (int *) ;
 int e_add ;
 int * make_eval_expr (int ,int,int *,int *) ;
 int parse_term (int **,TYPE_1__*) ;

__attribute__((used)) static int parse_subexpr(AVExpr **e, Parser *p)
{
    int ret;
    AVExpr *e0, *e1, *e2;
    if ((ret = parse_term(&e0, p)) < 0)
        return ret;
    while (*p->s == '+' || *p->s == '-') {
        e1 = e0;
        if ((ret = parse_term(&e2, p)) < 0) {
            av_expr_free(e1);
            return ret;
        }
        e0 = make_eval_expr(e_add, 1, e1, e2);
        if (!e0) {
            av_expr_free(e1);
            av_expr_free(e2);
            return AVERROR(ENOMEM);
        }
    };

    *e = e0;
    return 0;
}
