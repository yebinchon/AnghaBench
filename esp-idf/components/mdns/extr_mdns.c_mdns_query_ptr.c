
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mdns_result_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int MDNS_TYPE_PTR ;
 scalar_t__ _str_null_or_empty (char const*) ;
 int mdns_query (int *,char const*,char const*,int ,int ,size_t,int **) ;

esp_err_t mdns_query_ptr(const char * service, const char * proto, uint32_t timeout, size_t max_results, mdns_result_t ** results)
{
    if (_str_null_or_empty(service) || _str_null_or_empty(proto)) {
        return ESP_ERR_INVALID_ARG;
    }

    return mdns_query(((void*)0), service, proto, MDNS_TYPE_PTR, timeout, max_results, results);
}
