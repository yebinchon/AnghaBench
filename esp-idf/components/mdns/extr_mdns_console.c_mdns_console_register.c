
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_mdns_free () ;
 int register_mdns_init () ;
 int register_mdns_query_a () ;
 int register_mdns_query_aaaa () ;
 int register_mdns_query_ip () ;
 int register_mdns_query_ptr () ;
 int register_mdns_query_srv () ;
 int register_mdns_query_svc () ;
 int register_mdns_query_txt () ;
 int register_mdns_service_add () ;
 int register_mdns_service_instance_set () ;
 int register_mdns_service_port_set () ;
 int register_mdns_service_remove () ;
 int register_mdns_service_remove_all () ;
 int register_mdns_service_txt_remove () ;
 int register_mdns_service_txt_replace () ;
 int register_mdns_service_txt_set () ;
 int register_mdns_set_hostname () ;
 int register_mdns_set_instance () ;

void mdns_console_register(void)
{
    register_mdns_init();
    register_mdns_free();
    register_mdns_set_hostname();
    register_mdns_set_instance();
    register_mdns_service_add();
    register_mdns_service_remove();
    register_mdns_service_instance_set();
    register_mdns_service_port_set();
    register_mdns_service_txt_replace();
    register_mdns_service_txt_set();
    register_mdns_service_txt_remove();
    register_mdns_service_remove_all();

    register_mdns_query_a();
    register_mdns_query_aaaa();
    register_mdns_query_txt();
    register_mdns_query_srv();
    register_mdns_query_ptr();

    register_mdns_query_ip();
    register_mdns_query_svc();
}
