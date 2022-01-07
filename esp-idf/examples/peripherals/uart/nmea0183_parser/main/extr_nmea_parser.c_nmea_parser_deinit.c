
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ nmea_parser_handle_t ;
struct TYPE_3__ {struct TYPE_3__* buffer; int uart_port; int event_loop_hdl; int tsk_hdl; } ;
typedef TYPE_1__ esp_gps_t ;
typedef int esp_err_t ;


 int esp_event_loop_delete (int ) ;
 int free (TYPE_1__*) ;
 int uart_driver_delete (int ) ;
 int vTaskDelete (int ) ;

esp_err_t nmea_parser_deinit(nmea_parser_handle_t nmea_hdl)
{
    esp_gps_t *esp_gps = (esp_gps_t *)nmea_hdl;
    vTaskDelete(esp_gps->tsk_hdl);
    esp_event_loop_delete(esp_gps->event_loop_hdl);
    esp_err_t err = uart_driver_delete(esp_gps->uart_port);
    free(esp_gps->buffer);
    free(esp_gps);
    return err;
}
