
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ type; scalar_t__ max_results; scalar_t__ num_results; TYPE_2__* result; } ;
typedef TYPE_1__ mdns_search_once_t ;
struct TYPE_14__ {scalar_t__ tcpip_if; scalar_t__ ip_protocol; struct TYPE_14__* next; int hostname; TYPE_3__* addr; } ;
typedef TYPE_2__ mdns_result_t ;
typedef scalar_t__ mdns_ip_protocol_t ;
struct TYPE_15__ {struct TYPE_15__* next; } ;
typedef TYPE_3__ mdns_ip_addr_t ;
typedef scalar_t__ mdns_if_t ;
struct TYPE_16__ {scalar_t__ type; } ;
typedef TYPE_4__ esp_ip_addr_t ;


 int HOOK_MALLOC_FAILED ;
 scalar_t__ IPADDR_TYPE_V4 ;
 scalar_t__ IPADDR_TYPE_V6 ;
 scalar_t__ MDNS_TYPE_A ;
 scalar_t__ MDNS_TYPE_AAAA ;
 scalar_t__ MDNS_TYPE_ANY ;
 scalar_t__ MDNS_TYPE_PTR ;
 int _mdns_result_add_ip (TYPE_2__*,TYPE_4__*) ;
 TYPE_3__* _mdns_result_addr_create_ip (TYPE_4__*) ;
 int _str_null_or_empty (int ) ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int strcasecmp (char const*,int ) ;

__attribute__((used)) static void _mdns_search_result_add_ip(mdns_search_once_t * search, const char * hostname, esp_ip_addr_t * ip, mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol)
{
    mdns_result_t * r = ((void*)0);
    mdns_ip_addr_t * a = ((void*)0);

    if ((search->type == MDNS_TYPE_A && ip->type == IPADDR_TYPE_V4)
      || (search->type == MDNS_TYPE_AAAA && ip->type == IPADDR_TYPE_V6)
      || search->type == MDNS_TYPE_ANY) {
        r = search->result;
        while (r) {
            if (r->tcpip_if == tcpip_if && r->ip_protocol == ip_protocol) {
                _mdns_result_add_ip(r, ip);
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

            a = _mdns_result_addr_create_ip(ip);
            if (!a) {
                free(r);
                return;
            }
            a->next = r->addr;
            r->addr = a;
            r->tcpip_if = tcpip_if;
            r->ip_protocol = ip_protocol;
            r->next = search->result;
            search->result = r;
            search->num_results++;
        }
    } else if (search->type == MDNS_TYPE_PTR) {
        r = search->result;
        while (r) {
            if (r->tcpip_if == tcpip_if && r->ip_protocol == ip_protocol && !_str_null_or_empty(r->hostname) && !strcasecmp(hostname, r->hostname)) {
                _mdns_result_add_ip(r, ip);
                break;
            }
            r = r->next;
        }
    }
}
