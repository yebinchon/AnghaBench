
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* priv_class; } ;
typedef int AVClass ;
typedef TYPE_1__ AVBitStreamFilter ;


 TYPE_1__* av_bsf_iterate (void**) ;

const AVClass *ff_bsf_child_class_next(const AVClass *prev)
{
    const AVBitStreamFilter *f = ((void*)0);
    void *i = 0;


    while (prev && (f = av_bsf_iterate(&i))) {
        if (f->priv_class == prev) {
            break;
        }
    }


    while ((f = av_bsf_iterate(&i))) {
        if (f->priv_class)
            return f->priv_class;
    }
    return ((void*)0);
}
