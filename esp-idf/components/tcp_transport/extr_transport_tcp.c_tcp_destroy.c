
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transport_tcp_t ;
typedef int esp_transport_handle_t ;
typedef int esp_err_t ;


 int esp_transport_close (int ) ;
 int * esp_transport_get_context_data (int ) ;
 int free (int *) ;

__attribute__((used)) static esp_err_t tcp_destroy(esp_transport_handle_t t)
{
    transport_tcp_t *tcp = esp_transport_get_context_data(t);
    esp_transport_close(t);
    free(tcp);
    return 0;
}
