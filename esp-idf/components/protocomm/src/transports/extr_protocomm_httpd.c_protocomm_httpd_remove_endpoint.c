
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int httpd_handle_t ;
typedef int esp_err_t ;
struct TYPE_2__ {scalar_t__ priv; } ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,char const*) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_OK ;
 int HTTP_POST ;
 int TAG ;
 char* calloc (int,scalar_t__) ;
 int esp_err_to_name (int ) ;
 int free (char*) ;
 int httpd_unregister_uri_handler (int ,char*,int ) ;
 TYPE_1__* pc_httpd ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static esp_err_t protocomm_httpd_remove_endpoint(const char *ep_name)
{
    if (pc_httpd == ((void*)0)) {
        return ESP_ERR_INVALID_STATE;
    }

    ESP_LOGD(TAG, "Removing endpoint : %s", ep_name);


    char* ep_uri = calloc(1, strlen(ep_name) + 2);
    if (!ep_uri) {
        ESP_LOGE(TAG, "Malloc failed for ep uri");
        return ESP_ERR_NO_MEM;
    }
    sprintf(ep_uri, "/%s", ep_name);


    esp_err_t err;
    httpd_handle_t *server = (httpd_handle_t *) pc_httpd->priv;
    if ((err = httpd_unregister_uri_handler(*server, ep_uri, HTTP_POST)) != ESP_OK) {
        ESP_LOGE(TAG, "Uri handler de-register failed: %s", esp_err_to_name(err));
        free(ep_uri);
        return ESP_FAIL;
    }

    free(ep_uri);
    return ESP_OK;
}
