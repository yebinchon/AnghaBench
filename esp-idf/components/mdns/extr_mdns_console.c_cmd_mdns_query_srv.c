
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mdns_result_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_10__ {TYPE_4__* timeout; TYPE_3__* proto; TYPE_2__* service; TYPE_1__* instance; int end; } ;
struct TYPE_9__ {int* ival; } ;
struct TYPE_8__ {char** sval; } ;
struct TYPE_7__ {char** sval; } ;
struct TYPE_6__ {char** sval; } ;


 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 int mdns_print_results (int *) ;
 int mdns_query_results_free (int *) ;
 scalar_t__ mdns_query_srv (char const*,char const*,char const*,int,int **) ;
 TYPE_5__ mdns_query_srv_args ;
 int printf (char*,...) ;
 int stderr ;

__attribute__((used)) static int cmd_mdns_query_srv(int argc, char** argv)
{
    int nerrors = arg_parse(argc, argv, (void**) &mdns_query_srv_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, mdns_query_srv_args.end, argv[0]);
        return 1;
    }

    const char * instance = mdns_query_srv_args.instance->sval[0];
    const char * service = mdns_query_srv_args.service->sval[0];
    const char * proto = mdns_query_srv_args.proto->sval[0];
    int timeout = mdns_query_srv_args.timeout->ival[0];

    if (timeout <= 0) {
        timeout = 1000;
    }

    printf("Query SRV: %s.%s.%s.local, Timeout: %d\n", instance, service, proto, timeout);

    mdns_result_t * results = ((void*)0);
    esp_err_t err = mdns_query_srv(instance, service, proto, timeout, &results);
    if (err) {
        printf("ERROR: Query Failed\n");
        return 1;
    }
    if (!results) {
        printf("No results found!\n");
        return 0;
    }
    mdns_print_results(results);
    mdns_query_results_free(results);
    return 0;
}
