
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mdns_action_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 int GetLastItem (int **) ;
 scalar_t__ mdns_service_add (int *,char const*,char const*,int ,int *,int ) ;
 int mdns_test_execute_action (int *) ;
 int * mdns_test_mdns_get_service_item (char const*,char const*) ;

__attribute__((used)) static int mdns_test_service_add(const char * service_name, const char * proto, uint32_t port)
{
    if (mdns_service_add(((void*)0), service_name, proto, port, ((void*)0), 0)) {

    }
    mdns_action_t * a = ((void*)0);
    GetLastItem(&a);
    mdns_test_execute_action(a);

    if (mdns_test_mdns_get_service_item(service_name, proto)==((void*)0)) {
        return ESP_FAIL;
    }
    return ESP_OK;
}
