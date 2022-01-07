
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int httpd_req_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int cores; } ;
typedef TYPE_1__ esp_chip_info_t ;
typedef int cJSON ;


 int ESP_OK ;
 int IDF_VER ;
 int cJSON_AddNumberToObject (int *,char*,int ) ;
 int cJSON_AddStringToObject (int *,char*,int ) ;
 int * cJSON_CreateObject () ;
 int cJSON_Delete (int *) ;
 char* cJSON_Print (int *) ;
 int esp_chip_info (TYPE_1__*) ;
 int free (void*) ;
 int httpd_resp_sendstr (int *,char const*) ;
 int httpd_resp_set_type (int *,char*) ;

__attribute__((used)) static esp_err_t system_info_get_handler(httpd_req_t *req)
{
    httpd_resp_set_type(req, "application/json");
    cJSON *root = cJSON_CreateObject();
    esp_chip_info_t chip_info;
    esp_chip_info(&chip_info);
    cJSON_AddStringToObject(root, "version", IDF_VER);
    cJSON_AddNumberToObject(root, "cores", chip_info.cores);
    const char *sys_info = cJSON_Print(root);
    httpd_resp_sendstr(req, sys_info);
    free((void *)sys_info);
    cJSON_Delete(root);
    return ESP_OK;
}
