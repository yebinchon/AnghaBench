
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
typedef int gps_t ;
struct TYPE_4__ {char* buffer; int asterisk; size_t item_pos; int cur_statement; char crc; scalar_t__ sat_count; scalar_t__ sat_num; char* item_str; int parsed_statement; int all_statements; char parent; int event_loop_hdl; scalar_t__ item_num; } ;
typedef TYPE_1__ esp_gps_t ;
typedef int esp_err_t ;


 int ESP_LOGD (int ,char*,char*) ;
 int ESP_NMEA_EVENT ;
 int ESP_OK ;
 int GPS_TAG ;
 int GPS_UNKNOWN ;
 int GPS_UPDATE ;





 int STATEMENT_UNKNOWN ;

 int esp_event_post_to (int ,int ,int ,char*,size_t,int) ;
 int parse_item (TYPE_1__*) ;
 int portTICK_PERIOD_MS ;
 scalar_t__ strtol (char*,int *,int) ;

__attribute__((used)) static esp_err_t gps_decode(esp_gps_t *esp_gps, size_t len)
{
    const uint8_t *d = esp_gps->buffer;
    while (*d) {

        if (*d == '$') {

            esp_gps->asterisk = 0;
            esp_gps->item_num = 0;
            esp_gps->item_pos = 0;
            esp_gps->cur_statement = 0;
            esp_gps->crc = 0;
            esp_gps->sat_count = 0;
            esp_gps->sat_num = 0;

            esp_gps->item_str[esp_gps->item_pos++] = *d;
            esp_gps->item_str[esp_gps->item_pos] = '\0';
        }

        else if (*d == ',') {

            parse_item(esp_gps);

            esp_gps->crc ^= (uint8_t)(*d);

            esp_gps->item_pos = 0;
            esp_gps->item_str[0] = '\0';
            esp_gps->item_num++;
        }

        else if (*d == '*') {

            parse_item(esp_gps);

            esp_gps->asterisk = 1;

            esp_gps->item_pos = 0;
            esp_gps->item_str[0] = '\0';
            esp_gps->item_num++;
        }

        else if (*d == '\r') {

            uint8_t crc = (uint8_t)strtol(esp_gps->item_str, ((void*)0), 16);

            if (esp_gps->crc == crc) {
                switch (esp_gps->cur_statement) {
                default:
                    break;
                }

                if (((esp_gps->parsed_statement) & esp_gps->all_statements) == esp_gps->all_statements) {
                    esp_gps->parsed_statement = 0;

                    esp_event_post_to(esp_gps->event_loop_hdl, ESP_NMEA_EVENT, GPS_UPDATE,
                                      &(esp_gps->parent), sizeof(gps_t), 100 / portTICK_PERIOD_MS);
                }
            } else {
                ESP_LOGD(GPS_TAG, "CRC Error for statement:%s", esp_gps->buffer);
            }
            if (esp_gps->cur_statement == STATEMENT_UNKNOWN) {

                esp_event_post_to(esp_gps->event_loop_hdl, ESP_NMEA_EVENT, GPS_UNKNOWN,
                                  esp_gps->buffer, len, 100 / portTICK_PERIOD_MS);
            }
        }

        else {
            if (!(esp_gps->asterisk)) {

                esp_gps->crc ^= (uint8_t)(*d);
            }

            esp_gps->item_str[esp_gps->item_pos++] = *d;
            esp_gps->item_str[esp_gps->item_pos] = '\0';
        }

        d++;
    }
    return ESP_OK;
}
