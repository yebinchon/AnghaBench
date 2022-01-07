
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mdns_result_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int MDNS_TYPE_SRV ;
 scalar_t__ _str_null_or_empty (char const*) ;
 int mdns_query (char const*,char const*,char const*,int ,int ,int,int **) ;

esp_err_t mdns_query_srv(const char * instance, const char * service, const char * proto, uint32_t timeout, mdns_result_t ** result)
{
    if (_str_null_or_empty(instance) || _str_null_or_empty(service) || _str_null_or_empty(proto)) {
        return ESP_ERR_INVALID_ARG;
    }

    return mdns_query(instance, service, proto, MDNS_TYPE_SRV, timeout, 1, result);
}
