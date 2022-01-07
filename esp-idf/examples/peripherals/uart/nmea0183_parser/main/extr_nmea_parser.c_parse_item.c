
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ item_num; char* item_str; scalar_t__ cur_statement; } ;
typedef TYPE_1__ esp_gps_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ STATEMENT_GGA ;
 scalar_t__ STATEMENT_GLL ;
 scalar_t__ STATEMENT_GSA ;
 scalar_t__ STATEMENT_GSV ;
 scalar_t__ STATEMENT_RMC ;
 scalar_t__ STATEMENT_UNKNOWN ;
 scalar_t__ STATEMENT_VTG ;
 int parse_gga (TYPE_1__*) ;
 int parse_gll (TYPE_1__*) ;
 int parse_gsa (TYPE_1__*) ;
 int parse_gsv (TYPE_1__*) ;
 int parse_rmc (TYPE_1__*) ;
 int parse_vtg (TYPE_1__*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static esp_err_t parse_item(esp_gps_t *esp_gps)
{
    esp_err_t err = ESP_OK;

    if (esp_gps->item_num == 0 && esp_gps->item_str[0] == '$') {
        if (0) {
        }
        else {
            esp_gps->cur_statement = STATEMENT_UNKNOWN;
        }
        goto out;
    }

    if (esp_gps->cur_statement == STATEMENT_UNKNOWN) {
        goto out;
    }
    else {
        err = ESP_FAIL;
    }
out:
    return err;
}
