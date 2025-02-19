
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int target_addr ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; } ;
typedef struct addrinfo ip_addr_t ;
typedef int hint ;
typedef int esp_ping_handle_t ;
struct TYPE_19__ {struct addrinfo target_addr; void* tos; void* count; void* data_size; void* interval_ms; void* timeout_ms; } ;
typedef TYPE_7__ esp_ping_config_t ;
struct TYPE_20__ {int * cb_args; int on_ping_end; int on_ping_timeout; int on_ping_success; } ;
typedef TYPE_8__ esp_ping_callbacks_t ;
struct TYPE_21__ {TYPE_6__* host; TYPE_5__* tos; TYPE_4__* count; TYPE_3__* data_size; TYPE_2__* interval; TYPE_1__* timeout; int end; } ;
struct TYPE_18__ {char** sval; } ;
struct TYPE_17__ {scalar_t__ count; scalar_t__* ival; } ;
struct TYPE_16__ {scalar_t__ count; scalar_t__* ival; } ;
struct TYPE_15__ {scalar_t__ count; scalar_t__* ival; } ;
struct TYPE_14__ {scalar_t__ count; int* dval; } ;
struct TYPE_13__ {scalar_t__ count; int* dval; } ;


 scalar_t__ AF_INET ;
 TYPE_7__ ESP_PING_DEFAULT_CONFIG () ;
 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 int cmd_ping_on_ping_end ;
 int cmd_ping_on_ping_success ;
 int cmd_ping_on_ping_timeout ;
 int esp_ping_new_session (TYPE_7__*,TYPE_8__*,int *) ;
 int esp_ping_start (int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int inet6_addr_to_ip6addr (int ,struct in6_addr*) ;
 int inet_addr_to_ip4addr (int ,struct in_addr*) ;
 int ip_2_ip4 (struct addrinfo*) ;
 int ip_2_ip6 (struct addrinfo*) ;
 int memset (struct addrinfo*,int ,int) ;
 TYPE_9__ ping_args ;
 int printf (char*,char*) ;
 int stderr ;

__attribute__((used)) static int do_ping_cmd(int argc, char **argv)
{
    esp_ping_config_t config = ESP_PING_DEFAULT_CONFIG();

    int nerrors = arg_parse(argc, argv, (void **)&ping_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, ping_args.end, argv[0]);
        return 1;
    }

    if (ping_args.timeout->count > 0) {
        config.timeout_ms = (uint32_t)(ping_args.timeout->dval[0] * 1000);
    }

    if (ping_args.interval->count > 0) {
        config.interval_ms = (uint32_t)(ping_args.interval->dval[0] * 1000);
    }

    if (ping_args.data_size->count > 0) {
        config.data_size = (uint32_t)(ping_args.data_size->ival[0]);
    }

    if (ping_args.count->count > 0) {
        config.count = (uint32_t)(ping_args.count->ival[0]);
    }

    if (ping_args.tos->count > 0) {
        config.tos = (uint32_t)(ping_args.tos->ival[0]);
    }


    ip_addr_t target_addr;
    struct addrinfo hint;
    struct addrinfo *res = ((void*)0);
    memset(&hint, 0, sizeof(hint));
    memset(&target_addr, 0, sizeof(target_addr));

    if (getaddrinfo(ping_args.host->sval[0], ((void*)0), &hint, &res) != 0) {
        printf("ping: unknown host %s\n", ping_args.host->sval[0]);
        return 1;
    }
    if (res->ai_family == AF_INET) {
        struct in_addr addr4 = ((struct sockaddr_in *) (res->ai_addr))->sin_addr;
        inet_addr_to_ip4addr(ip_2_ip4(&target_addr), &addr4);
    } else {
        struct in6_addr addr6 = ((struct sockaddr_in6 *) (res->ai_addr))->sin6_addr;
        inet6_addr_to_ip6addr(ip_2_ip6(&target_addr), &addr6);
    }
    freeaddrinfo(res);
    config.target_addr = target_addr;


    esp_ping_callbacks_t cbs = {
        .on_ping_success = cmd_ping_on_ping_success,
        .on_ping_timeout = cmd_ping_on_ping_timeout,
        .on_ping_end = cmd_ping_on_ping_end,
        .cb_args = ((void*)0)
    };
    esp_ping_handle_t ping;
    esp_ping_new_session(&config, &cbs, &ping);
    esp_ping_start(ping);

    return 0;
}
