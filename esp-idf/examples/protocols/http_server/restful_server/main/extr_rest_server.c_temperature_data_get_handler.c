
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_req_t ;
typedef int esp_err_t ;
typedef int cJSON ;


 int ESP_OK ;
 int cJSON_AddNumberToObject (int *,char*,int) ;
 int * cJSON_CreateObject () ;
 int cJSON_Delete (int *) ;
 char* cJSON_Print (int *) ;
 int esp_random () ;
 int free (void*) ;
 int httpd_resp_sendstr (int *,char const*) ;
 int httpd_resp_set_type (int *,char*) ;

__attribute__((used)) static esp_err_t temperature_data_get_handler(httpd_req_t *req)
{
    httpd_resp_set_type(req, "application/json");
    cJSON *root = cJSON_CreateObject();
    cJSON_AddNumberToObject(root, "raw", esp_random() % 20);
    const char *sys_info = cJSON_Print(root);
    httpd_resp_sendstr(req, sys_info);
    free((void *)sys_info);
    cJSON_Delete(root);
    return ESP_OK;
}
