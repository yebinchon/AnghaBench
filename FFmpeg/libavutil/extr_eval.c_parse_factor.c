
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int value; TYPE_1__** param; } ;
struct TYPE_13__ {char* s; } ;
struct TYPE_12__ {int value; } ;
typedef TYPE_2__ Parser ;
typedef TYPE_3__ AVExpr ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_expr_free (TYPE_3__*) ;
 int e_pow ;
 TYPE_3__* make_eval_expr (int ,int,TYPE_3__*,TYPE_3__*) ;
 int parse_dB (TYPE_3__**,TYPE_2__*,int*) ;

__attribute__((used)) static int parse_factor(AVExpr **e, Parser *p)
{
    int sign, sign2, ret;
    AVExpr *e0, *e1, *e2;
    if ((ret = parse_dB(&e0, p, &sign)) < 0)
        return ret;
    while(p->s[0]=='^'){
        e1 = e0;
        p->s++;
        if ((ret = parse_dB(&e2, p, &sign2)) < 0) {
            av_expr_free(e1);
            return ret;
        }
        e0 = make_eval_expr(e_pow, 1, e1, e2);
        if (!e0) {
            av_expr_free(e1);
            av_expr_free(e2);
            return AVERROR(ENOMEM);
        }
        if (e0->param[1]) e0->param[1]->value *= (sign2|1);
    }
    if (e0) e0->value *= (sign|1);

    *e = e0;
    return 0;
}
