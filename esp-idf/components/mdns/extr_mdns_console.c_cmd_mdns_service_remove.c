
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* proto; TYPE_1__* service; int end; } ;
struct TYPE_5__ {int * sval; } ;
struct TYPE_4__ {int * sval; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 TYPE_3__ mdns_remove_args ;
 int mdns_service_remove (int ,int ) ;
 int printf (char*) ;
 int stderr ;

__attribute__((used)) static int cmd_mdns_service_remove(int argc, char** argv)
{
    int nerrors = arg_parse(argc, argv, (void**) &mdns_remove_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, mdns_remove_args.end, argv[0]);
        return 1;
    }

    if (!mdns_remove_args.service->sval[0] || !mdns_remove_args.proto->sval[0]) {
        printf("ERROR: Bad arguments!\n");
        return 1;
    }

    ESP_ERROR_CHECK( mdns_service_remove(mdns_remove_args.service->sval[0], mdns_remove_args.proto->sval[0]) );
    return 0;
}
