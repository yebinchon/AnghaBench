
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {double x; double y; double a; double b; } ;
struct TYPE_4__ {double in_min_lin; double out_min_lin; int nb_segments; TYPE_2__* segments; } ;
typedef TYPE_1__ CompandT ;
typedef TYPE_2__ CompandSegment ;


 double exp (double) ;
 double log (double) ;

__attribute__((used)) static double get_volume(CompandT *s, double in_lin)
{
    CompandSegment *cs;
    double in_log, out_log;
    int i;

    if (in_lin <= s->in_min_lin)
        return s->out_min_lin;

    in_log = log(in_lin);

    for (i = 1; i < s->nb_segments; i++)
        if (in_log <= s->segments[i].x)
            break;
    cs = &s->segments[i - 1];
    in_log -= cs->x;
    out_log = cs->y + in_log * (cs->a * in_log + cs->b);

    return exp(out_log);
}
