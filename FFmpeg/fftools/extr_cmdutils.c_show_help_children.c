
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ option; } ;
typedef TYPE_1__ AVClass ;


 TYPE_1__* av_opt_child_class_next (TYPE_1__ const*,TYPE_1__ const*) ;
 int av_opt_show2 (TYPE_1__ const**,int *,int,int ) ;
 int printf (char*) ;

void show_help_children(const AVClass *class, int flags)
{
    const AVClass *child = ((void*)0);
    if (class->option) {
        av_opt_show2(&class, ((void*)0), flags, 0);
        printf("\n");
    }

    while (child = av_opt_child_class_next(class, child))
        show_help_children(child, flags);
}
