
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_5__ {TYPE_1__* request; } ;
struct TYPE_4__ {int headers; } ;


 int http_header_delete (int ,char const*) ;

esp_err_t esp_http_client_delete_header(esp_http_client_handle_t client, const char *key)
{
    return http_header_delete(client->request->headers, key);
}
