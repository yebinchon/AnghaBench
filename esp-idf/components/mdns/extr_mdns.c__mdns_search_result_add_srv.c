
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ max_results; scalar_t__ num_results; TYPE_2__* result; } ;
typedef TYPE_1__ mdns_search_once_t ;
struct TYPE_7__ {scalar_t__ tcpip_if; scalar_t__ ip_protocol; struct TYPE_7__* next; int port; int hostname; } ;
typedef TYPE_2__ mdns_result_t ;
typedef scalar_t__ mdns_ip_protocol_t ;
typedef scalar_t__ mdns_if_t ;


 int HOOK_MALLOC_FAILED ;
 int _str_null_or_empty (int ) ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int strcasecmp (char const*,int ) ;
 int strdup (char const*) ;

__attribute__((used)) static void _mdns_search_result_add_srv(mdns_search_once_t * search, const char * hostname, uint16_t port, mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol)
{
    mdns_result_t * r = search->result;
    while (r) {
        if (r->tcpip_if == tcpip_if && r->ip_protocol == ip_protocol && !_str_null_or_empty(r->hostname) && !strcasecmp(hostname, r->hostname)) {
            return;
        }
        r = r->next;
    }
    if (!search->max_results || search->num_results < search->max_results) {
        r = (mdns_result_t *)malloc(sizeof(mdns_result_t));
        if (!r) {
            HOOK_MALLOC_FAILED;
            return;
        }

        memset(r, 0 , sizeof(mdns_result_t));
        r->hostname = strdup(hostname);
        if (!r->hostname) {
            free(r);
            return;
        }
        r->port = port;
        r->tcpip_if = tcpip_if;
        r->ip_protocol = ip_protocol;
        r->next = search->result;
        search->result = r;
        search->num_results++;
    }
}
