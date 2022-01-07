
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nmea_parser_handle_t ;
typedef int nmea_parser_config_t ;


 int NMEA_PARSER_CONFIG_DEFAULT () ;
 int gps_event_handler ;
 int nmea_parser_add_handler (int ,int ,int *) ;
 int nmea_parser_deinit (int ) ;
 int nmea_parser_init (int *) ;
 int nmea_parser_remove_handler (int ,int ) ;
 int portTICK_PERIOD_MS ;
 int vTaskDelay (int) ;

void app_main(void)
{

    nmea_parser_config_t config = NMEA_PARSER_CONFIG_DEFAULT();

    nmea_parser_handle_t nmea_hdl = nmea_parser_init(&config);

    nmea_parser_add_handler(nmea_hdl, gps_event_handler, ((void*)0));

    vTaskDelay(10000 / portTICK_PERIOD_MS);


    nmea_parser_remove_handler(nmea_hdl, gps_event_handler);

    nmea_parser_deinit(nmea_hdl);
}
