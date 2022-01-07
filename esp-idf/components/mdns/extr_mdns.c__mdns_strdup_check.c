
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 char* strdup (char*) ;

__attribute__((used)) static esp_err_t _mdns_strdup_check(char ** out, char * in)
{
    if (in && in[0]) {
        *out = strdup(in);
        if (!*out) {
            return ESP_FAIL;
        }
        return ESP_OK;
    }
    *out = ((void*)0);
    return ESP_OK;
}
