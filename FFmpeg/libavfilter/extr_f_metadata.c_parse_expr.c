
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* var_values; int expr; } ;
typedef TYPE_1__ MetadataContext ;


 size_t VAR_VALUE1 ;
 size_t VAR_VALUE2 ;
 int av_expr_eval (int ,double*,int *) ;
 int sscanf (char const*,char*,double*) ;

__attribute__((used)) static int parse_expr(MetadataContext *s, const char *value1, const char *value2)
{
    double f1, f2;

    if (sscanf(value1, "%lf", &f1) + sscanf(value2, "%lf", &f2) != 2)
        return 0;

    s->var_values[VAR_VALUE1] = f1;
    s->var_values[VAR_VALUE2] = f2;

    return av_expr_eval(s->expr, s->var_values, ((void*)0));
}
