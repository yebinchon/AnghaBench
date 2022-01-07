
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__ const* option; } ;
struct TYPE_5__ {scalar_t__ name; } ;
typedef TYPE_1__ AVOption ;
typedef TYPE_2__ AVClass ;



const AVOption *av_opt_next(const void *obj, const AVOption *last)
{
    const AVClass *class;
    if (!obj)
        return ((void*)0);
    class = *(const AVClass**)obj;
    if (!last && class && class->option && class->option[0].name)
        return class->option;
    if (last && last[1].name)
        return ++last;
    return ((void*)0);
}
