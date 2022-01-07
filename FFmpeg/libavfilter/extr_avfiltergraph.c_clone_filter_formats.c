
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nb_formats; struct TYPE_6__* formats; int * refs; scalar_t__ refcount; } ;
typedef TYPE_1__ AVFilterFormats ;


 int av_freep (TYPE_1__**) ;
 void* av_memdup (TYPE_1__*,int) ;

__attribute__((used)) static AVFilterFormats *clone_filter_formats(AVFilterFormats *arg)
{
    AVFilterFormats *a = av_memdup(arg, sizeof(*arg));
    if (a) {
        a->refcount = 0;
        a->refs = ((void*)0);
        a->formats = av_memdup(a->formats, sizeof(*a->formats) * a->nb_formats);
        if (!a->formats && arg->formats)
            av_freep(&a);
    }
    return a;
}
