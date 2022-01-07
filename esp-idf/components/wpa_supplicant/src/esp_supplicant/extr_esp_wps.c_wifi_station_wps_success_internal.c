
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WIFI_EVENT ;
 int WIFI_EVENT_STA_WPS_ER_SUCCESS ;
 int esp_event_send_internal (int ,int ,int ,int ,int ) ;
 int portMAX_DELAY ;

void wifi_station_wps_success_internal(void)
{
    esp_event_send_internal(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_SUCCESS, 0, 0, portMAX_DELAY);
}
