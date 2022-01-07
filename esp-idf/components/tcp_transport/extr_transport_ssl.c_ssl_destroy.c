
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transport_ssl_t ;
typedef int esp_transport_handle_t ;


 int esp_transport_close (int ) ;
 int * esp_transport_get_context_data (int ) ;
 int free (int *) ;

__attribute__((used)) static int ssl_destroy(esp_transport_handle_t t)
{
    transport_ssl_t *ssl = esp_transport_get_context_data(t);
    esp_transport_close(t);
    free(ssl);
    return 0;
}
