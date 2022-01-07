
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct file_server_data {int base_path; } ;
struct TYPE_6__ {char* uri; struct file_server_data* user_ctx; int handler; int method; } ;
typedef TYPE_1__ httpd_uri_t ;
typedef int * httpd_handle_t ;
struct TYPE_7__ {int uri_match_fn; } ;
typedef TYPE_2__ httpd_config_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 TYPE_2__ HTTPD_DEFAULT_CONFIG () ;
 int HTTP_GET ;
 int HTTP_POST ;
 int TAG ;
 struct file_server_data* calloc (int,int) ;
 int delete_post_handler ;
 int download_get_handler ;
 int httpd_register_uri_handler (int *,TYPE_1__*) ;
 scalar_t__ httpd_start (int **,TYPE_2__*) ;
 int httpd_uri_match_wildcard ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (int ,char const*,int) ;
 int upload_post_handler ;

esp_err_t start_file_server(const char *base_path)
{
    static struct file_server_data *server_data = ((void*)0);


    if (!base_path || strcmp(base_path, "/spiffs") != 0) {
        ESP_LOGE(TAG, "File server presently supports only '/spiffs' as base path");
        return ESP_ERR_INVALID_ARG;
    }

    if (server_data) {
        ESP_LOGE(TAG, "File server already started");
        return ESP_ERR_INVALID_STATE;
    }


    server_data = calloc(1, sizeof(struct file_server_data));
    if (!server_data) {
        ESP_LOGE(TAG, "Failed to allocate memory for server data");
        return ESP_ERR_NO_MEM;
    }
    strlcpy(server_data->base_path, base_path,
            sizeof(server_data->base_path));

    httpd_handle_t server = ((void*)0);
    httpd_config_t config = HTTPD_DEFAULT_CONFIG();




    config.uri_match_fn = httpd_uri_match_wildcard;

    ESP_LOGI(TAG, "Starting HTTP Server");
    if (httpd_start(&server, &config) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to start file server!");
        return ESP_FAIL;
    }


    httpd_uri_t file_download = {
        .uri = "/*",
        .method = HTTP_GET,
        .handler = download_get_handler,
        .user_ctx = server_data
    };
    httpd_register_uri_handler(server, &file_download);


    httpd_uri_t file_upload = {
        .uri = "/upload/*",
        .method = HTTP_POST,
        .handler = upload_post_handler,
        .user_ctx = server_data
    };
    httpd_register_uri_handler(server, &file_upload);


    httpd_uri_t file_delete = {
        .uri = "/delete/*",
        .method = HTTP_POST,
        .handler = delete_post_handler,
        .user_ctx = server_data
    };
    httpd_register_uri_handler(server, &file_delete);

    return ESP_OK;
}
