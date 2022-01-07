
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* priv_class; } ;
typedef TYPE_1__ AVFilter ;
typedef int AVClass ;


 TYPE_1__* av_filter_iterate (void**) ;

__attribute__((used)) static const AVClass *filter_child_class_next(const AVClass *prev)
{
    void *opaque = ((void*)0);
    const AVFilter *f = ((void*)0);


    while (prev && (f = av_filter_iterate(&opaque)))
        if (f->priv_class == prev)
            break;


    if (prev && !f)
        return ((void*)0);


    while ((f = av_filter_iterate(&opaque)))
        if (f->priv_class)
            return f->priv_class;

    return ((void*)0);
}
