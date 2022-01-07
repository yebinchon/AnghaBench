
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int protocomm_t ;


 int httpd_ssl_stop (int *) ;
 int mdns_service_remove (char*,char*) ;
 int protocomm_httpd_stop (int *) ;
 int * server_handle ;

__attribute__((used)) static void stop_httpd_transport(protocomm_t *pc)
{
    mdns_service_remove("_esp_local_ctrl", "_tcp");
    protocomm_httpd_stop(pc);
    httpd_ssl_stop(server_handle);
    server_handle = ((void*)0);
}
