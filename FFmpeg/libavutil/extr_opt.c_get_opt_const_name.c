
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {scalar_t__ i64; } ;
struct TYPE_6__ {scalar_t__ type; char const* name; TYPE_1__ default_val; int unit; } ;
typedef TYPE_2__ AVOption ;


 scalar_t__ AV_OPT_TYPE_CONST ;
 TYPE_2__* av_opt_next (void*,TYPE_2__ const*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static const char *get_opt_const_name(void *obj, const char *unit, int64_t value)
{
    const AVOption *opt = ((void*)0);

    if (!unit)
        return ((void*)0);
    while ((opt = av_opt_next(obj, opt)))
        if (opt->type == AV_OPT_TYPE_CONST && !strcmp(opt->unit, unit) &&
            opt->default_val.i64 == value)
            return opt->name;
    return ((void*)0);
}
