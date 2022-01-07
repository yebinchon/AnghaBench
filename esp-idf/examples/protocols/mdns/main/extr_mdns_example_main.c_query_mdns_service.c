
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mdns_result_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,char const*,char const*) ;
 int ESP_LOGW (int ,char*) ;
 int TAG ;
 int esp_err_to_name (scalar_t__) ;
 int mdns_print_results (int *) ;
 scalar_t__ mdns_query_ptr (char const*,char const*,int,int,int **) ;
 int mdns_query_results_free (int *) ;

__attribute__((used)) static void query_mdns_service(const char * service_name, const char * proto)
{
    ESP_LOGI(TAG, "Query PTR: %s.%s.local", service_name, proto);

    mdns_result_t * results = ((void*)0);
    esp_err_t err = mdns_query_ptr(service_name, proto, 3000, 20, &results);
    if(err){
        ESP_LOGE(TAG, "Query Failed: %s", esp_err_to_name(err));
        return;
    }
    if(!results){
        ESP_LOGW(TAG, "No results found!");
        return;
    }

    mdns_print_results(results);
    mdns_query_results_free(results);
}
