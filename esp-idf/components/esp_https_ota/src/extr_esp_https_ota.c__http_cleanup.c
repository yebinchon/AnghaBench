
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_http_client_handle_t ;


 int esp_http_client_cleanup (int ) ;
 int esp_http_client_close (int ) ;

__attribute__((used)) static void _http_cleanup(esp_http_client_handle_t client)
{
    esp_http_client_close(client);
    esp_http_client_cleanup(client);
}
