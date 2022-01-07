
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ AVBitStreamFilter ;


 TYPE_1__* av_bsf_iterate (void**) ;
 int strcmp (int ,char const*) ;

const AVBitStreamFilter *av_bsf_get_by_name(const char *name)
{
    const AVBitStreamFilter *f = ((void*)0);
    void *i = 0;

    if (!name)
        return ((void*)0);

    while ((f = av_bsf_iterate(&i))) {
        if (!strcmp(f->name, name))
            return f;
    }

    return ((void*)0);
}
