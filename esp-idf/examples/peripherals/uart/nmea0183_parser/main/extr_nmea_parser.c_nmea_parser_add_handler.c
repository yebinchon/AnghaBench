
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ nmea_parser_handle_t ;
struct TYPE_2__ {int event_loop_hdl; } ;
typedef TYPE_1__ esp_gps_t ;
typedef int esp_event_handler_t ;
typedef int esp_err_t ;


 int ESP_EVENT_ANY_ID ;
 int ESP_NMEA_EVENT ;
 int esp_event_handler_register_with (int ,int ,int ,int ,void*) ;

esp_err_t nmea_parser_add_handler(nmea_parser_handle_t nmea_hdl, esp_event_handler_t event_handler, void *handler_args)
{
    esp_gps_t *esp_gps = (esp_gps_t *)nmea_hdl;
    return esp_event_handler_register_with(esp_gps->event_loop_hdl, ESP_NMEA_EVENT, ESP_EVENT_ANY_ID,
                                           event_handler, handler_args);
}
