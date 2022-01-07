
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mdns_result_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_12__ {TYPE_5__* max_results; TYPE_4__* timeout; TYPE_3__* proto; TYPE_2__* service; TYPE_1__* instance; int end; } ;
struct TYPE_11__ {int* ival; } ;
struct TYPE_10__ {int* ival; } ;
struct TYPE_9__ {char** sval; } ;
struct TYPE_8__ {char** sval; } ;
struct TYPE_7__ {char** sval; } ;


 int MDNS_TYPE_ANY ;
 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 int mdns_print_results (int *) ;
 scalar_t__ mdns_query (char const*,char const*,char const*,int ,int,int,int **) ;
 int mdns_query_results_free (int *) ;
 TYPE_6__ mdns_query_svc_args ;
 int printf (char*,...) ;
 int stderr ;

__attribute__((used)) static int cmd_mdns_query_svc(int argc, char** argv)
{
    int nerrors = arg_parse(argc, argv, (void**) &mdns_query_svc_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, mdns_query_svc_args.end, argv[0]);
        return 1;
    }

    const char * instance = mdns_query_svc_args.instance->sval[0];
    const char * service = mdns_query_svc_args.service->sval[0];
    const char * proto = mdns_query_svc_args.proto->sval[0];
    int timeout = mdns_query_svc_args.timeout->ival[0];
    int max_results = mdns_query_svc_args.max_results->ival[0];

    if (timeout <= 0) {
        timeout = 5000;
    }

    if (max_results < 0 || max_results > 255) {
        max_results = 255;
    }

    printf("Query SVC: %s.%s.%s.local, Timeout: %d, Max Results: %d\n", instance, service, proto, timeout, max_results);

    mdns_result_t * results = ((void*)0);
    esp_err_t err = mdns_query(instance, service, proto, MDNS_TYPE_ANY, timeout, max_results, &results);
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
