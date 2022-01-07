
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ AVOption ;
typedef int AVClass ;


 scalar_t__ FF_OPT_TYPE_CONST ;
 TYPE_1__* av_next_option (int const**,TYPE_1__ const*) ;
 int print_option (int const*,TYPE_1__ const*) ;
 int printf (char*) ;

__attribute__((used)) static void show_opts(const AVClass *class)
{
    const AVOption *o = ((void*)0);

    printf("@table @option\n");
    while ((o = av_next_option(&class, o)))
        if (o->type != FF_OPT_TYPE_CONST)
            print_option(class, o);
    printf("@end table\n");
}
