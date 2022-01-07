
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* hostname; int end; } ;
struct TYPE_3__ {int ** sval; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 int mdns_hostname_set (int *) ;
 TYPE_2__ mdns_set_hostname_args ;
 int printf (char*) ;
 int stderr ;

__attribute__((used)) static int cmd_mdns_set_hostname(int argc, char** argv)
{
    int nerrors = arg_parse(argc, argv, (void**) &mdns_set_hostname_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, mdns_set_hostname_args.end, argv[0]);
        return 1;
    }

    if (mdns_set_hostname_args.hostname->sval[0] == ((void*)0)) {
        printf("ERROR: Bad arguments!\n");
        return 1;
    }

    ESP_ERROR_CHECK( mdns_hostname_set(mdns_set_hostname_args.hostname->sval[0]) );
    return 0;
}
