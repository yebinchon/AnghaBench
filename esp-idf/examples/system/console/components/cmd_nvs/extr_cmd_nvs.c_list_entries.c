
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* type; TYPE_2__* namespace; TYPE_1__* partition; int end; } ;
struct TYPE_7__ {char** sval; } ;
struct TYPE_6__ {char** sval; } ;
struct TYPE_5__ {char** sval; } ;


 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 int list (char const*,char const*,char const*) ;
 TYPE_4__ list_args ;
 int stderr ;

__attribute__((used)) static int list_entries(int argc, char **argv)
{
    list_args.partition->sval[0] = "";
    list_args.namespace->sval[0] = "";
    list_args.type->sval[0] = "";

    int nerrors = arg_parse(argc, argv, (void **) &list_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, list_args.end, argv[0]);
        return 1;
    }

    const char *part = list_args.partition->sval[0];
    const char *name = list_args.namespace->sval[0];
    const char *type = list_args.type->sval[0];

    return list(part, name, type);
}
