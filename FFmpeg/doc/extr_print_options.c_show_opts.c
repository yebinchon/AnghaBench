
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ name; } ;
typedef TYPE_1__ AVOption ;


 scalar_t__ AV_OPT_TYPE_CONST ;
 int print_option (TYPE_1__ const*,TYPE_1__ const*,int) ;
 int printf (char*) ;

__attribute__((used)) static void show_opts(const AVOption *opts, int per_stream)
{
    const AVOption *o;

    printf("@table @option\n");
    for (o = opts; o->name; o++) {
        if (o->type != AV_OPT_TYPE_CONST)
            print_option(opts, o, per_stream);
    }
    printf("@end table\n");
}
