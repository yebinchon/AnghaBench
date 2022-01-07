
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mdns_txt_item_t ;
typedef int mdns_action_t ;


 int GetLastItem (int **) ;
 int mdns_service_txt_set (char const*,char const*,int *,int ) ;
 int mdns_test_execute_action (int *) ;

__attribute__((used)) static int mdns_test_service_txt_set(const char * service, const char * proto, uint8_t num_items, mdns_txt_item_t txt[])
{
    int ret = mdns_service_txt_set(service, proto, txt, num_items);
    mdns_action_t * a = ((void*)0);
    GetLastItem(&a);
    mdns_test_execute_action(a);
    return ret;
}
