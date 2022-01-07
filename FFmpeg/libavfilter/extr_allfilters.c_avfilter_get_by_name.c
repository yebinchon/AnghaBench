
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ const AVFilter ;


 TYPE_1__ const* av_filter_iterate (void**) ;
 int strcmp (int ,char const*) ;

const AVFilter *avfilter_get_by_name(const char *name)
{
    const AVFilter *f = ((void*)0);
    void *opaque = 0;

    if (!name)
        return ((void*)0);

    while ((f = av_filter_iterate(&opaque)))
        if (!strcmp(f->name, name))
            return (AVFilter *)f;

    return ((void*)0);
}
