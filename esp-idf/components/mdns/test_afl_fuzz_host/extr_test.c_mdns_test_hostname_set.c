
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mdns_action_t ;


 int GetLastItem (int **) ;
 int mdns_hostname_set (char const*) ;
 int mdns_test_execute_action (int *) ;

__attribute__((used)) static int mdns_test_hostname_set(const char * mdns_hostname)
{
    int ret = mdns_hostname_set(mdns_hostname);
    mdns_action_t * a = ((void*)0);
    GetLastItem(&a);
    mdns_test_execute_action(a);
    return ret;
}
