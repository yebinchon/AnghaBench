
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* instance; TYPE_1__* hostname; int end; } ;
struct TYPE_5__ {char** sval; } ;
struct TYPE_4__ {char** sval; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 int mdns_hostname_set (char*) ;
 int mdns_init () ;
 TYPE_3__ mdns_init_args ;
 int mdns_instance_name_set (char*) ;
 int printf (char*,char*) ;
 int stderr ;

__attribute__((used)) static int cmd_mdns_init(int argc, char** argv)
{
    int nerrors = arg_parse(argc, argv, (void**) &mdns_init_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, mdns_init_args.end, argv[0]);
        return 1;
    }

    ESP_ERROR_CHECK( mdns_init() );

    if (mdns_init_args.hostname->sval[0]) {
        ESP_ERROR_CHECK( mdns_hostname_set(mdns_init_args.hostname->sval[0]) );
        printf("MDNS: Hostname: %s\n", mdns_init_args.hostname->sval[0]);
    }

    if (mdns_init_args.instance->sval[0]) {
        ESP_ERROR_CHECK( mdns_instance_name_set(mdns_init_args.instance->sval[0]) );
        printf("MDNS: Instance: %s\n", mdns_init_args.instance->sval[0]);
    }

    return 0;
}
