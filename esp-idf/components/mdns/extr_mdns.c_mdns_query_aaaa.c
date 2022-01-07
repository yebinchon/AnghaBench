
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {TYPE_5__* addr; } ;
typedef TYPE_4__ mdns_result_t ;
struct TYPE_10__ {int addr; } ;
struct TYPE_11__ {TYPE_1__ ip6; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ u_addr; } ;
struct TYPE_14__ {struct TYPE_14__* next; TYPE_3__ addr; } ;
typedef TYPE_5__ mdns_ip_addr_t ;
struct TYPE_15__ {int addr; } ;
typedef TYPE_6__ esp_ip6_addr_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NOT_FOUND ;
 scalar_t__ ESP_OK ;
 scalar_t__ IPADDR_TYPE_V6 ;
 int MDNS_TYPE_AAAA ;
 scalar_t__ _str_null_or_empty (char const*) ;
 scalar_t__ mdns_query (char const*,int *,int *,int ,int ,int,TYPE_4__**) ;
 int mdns_query_results_free (TYPE_4__*) ;
 int memcpy (int ,int ,int) ;

esp_err_t mdns_query_aaaa(const char * name, uint32_t timeout, esp_ip6_addr_t * addr)
{
    mdns_result_t * result = ((void*)0);
    esp_err_t err;

    if (_str_null_or_empty(name)) {
        return ESP_ERR_INVALID_ARG;
    }

    err = mdns_query(name, ((void*)0), ((void*)0), MDNS_TYPE_AAAA, timeout, 1, &result);

    if (err) {
        return err;
    }

    if (!result) {
        return ESP_ERR_NOT_FOUND;
    }

    mdns_ip_addr_t * a = result->addr;
    while (a) {
        if (a->addr.type == IPADDR_TYPE_V6) {
            memcpy(addr->addr, a->addr.u_addr.ip6.addr, 16);
            mdns_query_results_free(result);
            return ESP_OK;
        }
        a = a->next;
    }

    mdns_query_results_free(result);
    return ESP_ERR_NOT_FOUND;
}
