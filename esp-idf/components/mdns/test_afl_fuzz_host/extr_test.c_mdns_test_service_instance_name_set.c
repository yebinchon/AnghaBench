
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mdns_action_t ;


 int GetLastItem (int **) ;
 int mdns_service_instance_name_set (char const*,char const*,char const*) ;
 int mdns_test_execute_action (int *) ;

__attribute__((used)) static int mdns_test_service_instance_name_set(const char * service, const char * proto, const char * instance)
{
    int ret = mdns_service_instance_name_set(service, proto, instance);
    mdns_action_t * a = ((void*)0);
    GetLastItem(&a);
    mdns_test_execute_action(a);
    return ret;
}
