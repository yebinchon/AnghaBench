
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; void* max_results; void* timeout; int hostname; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_end (int) ;
 void* arg_int0 (char*,char*,char*,char*) ;
 int arg_str1 (int *,int *,char*,char*) ;
 int cmd_mdns_query_ip ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ mdns_query_ip_args ;

__attribute__((used)) static void register_mdns_query_ip(void)
{
    mdns_query_ip_args.hostname = arg_str1(((void*)0), ((void*)0), "<hostname>", "Hostname that is searched for");
    mdns_query_ip_args.timeout = arg_int0("t", "timeout", "<timeout>", "Timeout for this query");
    mdns_query_ip_args.max_results = arg_int0("m", "max_results", "<max_results>", "Maximum results returned");
    mdns_query_ip_args.end = arg_end(2);

    const esp_console_cmd_t cmd_init = {
        .command = "mdns_query_ip",
        .help = "Query MDNS for IP",
        .hint = ((void*)0),
        .func = &cmd_mdns_query_ip,
        .argtable = &mdns_query_ip_args
    };

    ESP_ERROR_CHECK( esp_console_cmd_register(&cmd_init) );
}
