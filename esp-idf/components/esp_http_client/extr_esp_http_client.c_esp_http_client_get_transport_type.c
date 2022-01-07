
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_http_client_transport_t ;
typedef TYPE_2__* esp_http_client_handle_t ;
struct TYPE_4__ {int scheme; } ;
struct TYPE_5__ {TYPE_1__ connection_info; } ;


 int HTTP_TRANSPORT_OVER_SSL ;
 int HTTP_TRANSPORT_OVER_TCP ;
 int HTTP_TRANSPORT_UNKNOWN ;
 int strcasecmp (int ,char*) ;

esp_http_client_transport_t esp_http_client_get_transport_type(esp_http_client_handle_t client)
{
    if (!strcasecmp(client->connection_info.scheme, "https") ) {
        return HTTP_TRANSPORT_OVER_SSL;
    } else if (!strcasecmp(client->connection_info.scheme, "http")) {
        return HTTP_TRANSPORT_OVER_TCP;
    } else {
        return HTTP_TRANSPORT_UNKNOWN;
    }
}
