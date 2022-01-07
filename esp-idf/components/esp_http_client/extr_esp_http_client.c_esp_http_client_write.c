
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* esp_http_client_handle_t ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ is_async; int timeout_ms; int transport; } ;


 int ESP_FAIL ;
 scalar_t__ HTTP_STATE_REQ_COMPLETE_HEADER ;
 int esp_transport_write (int ,char const*,int,int ) ;

int esp_http_client_write(esp_http_client_handle_t client, const char *buffer, int len)
{
    if (client->state < HTTP_STATE_REQ_COMPLETE_HEADER) {
        return ESP_FAIL;
    }

    int wlen = 0, widx = 0;
    while (len > 0) {
        wlen = esp_transport_write(client->transport, buffer + widx, len, client->timeout_ms);


        if (client->is_async || wlen <= 0) {
            return wlen;
        }
        widx += wlen;
        len -= wlen;
    }
    return widx;
}
