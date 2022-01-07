
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int den; int num; } ;
typedef TYPE_1__ AVRational ;


 TYPE_1__ av_d2q (double,int) ;
 int av_expr_parse_and_eval (double*,char const*,int *,int *,int *,int *,int *,int *,int *,int,void*) ;
 int av_reduce (int *,int *,int ,int ,int) ;
 int sscanf (char const*,char*,int *,int *,char*) ;

int av_parse_ratio(AVRational *q, const char *str, int max,
                   int log_offset, void *log_ctx)
{
    char c;
    int ret;

    if (sscanf(str, "%d:%d%c", &q->num, &q->den, &c) != 2) {
        double d;
        ret = av_expr_parse_and_eval(&d, str, ((void*)0), ((void*)0),
                                     ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                     ((void*)0), log_offset, log_ctx);
        if (ret < 0)
            return ret;
        *q = av_d2q(d, max);
    } else {
        av_reduce(&q->num, &q->den, q->num, q->den, max);
    }

    return 0;
}
