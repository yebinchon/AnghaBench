
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__ const* (* child_class_next ) (TYPE_1__ const*) ;} ;
typedef TYPE_1__ AVClass ;


 TYPE_1__ const* stub1 (TYPE_1__ const*) ;

const AVClass *av_opt_child_class_next(const AVClass *parent, const AVClass *prev)
{
    if (parent->child_class_next)
        return parent->child_class_next(prev);
    return ((void*)0);
}
