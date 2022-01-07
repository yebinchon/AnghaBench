
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* esp_http_client_handle_t ;
struct TYPE_5__ {TYPE_1__* response; } ;
struct TYPE_4__ {int status_code; } ;



int esp_http_client_get_status_code(esp_http_client_handle_t client)
{
    return client->response->status_code;
}
