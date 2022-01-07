
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int dummy; } ;
struct file_server_data {int base_path; } ;
struct TYPE_7__ {int uri; scalar_t__ user_ctx; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int filepath ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,char const*) ;
 int ESP_LOGI (int ,char*,char const*) ;
 int ESP_OK ;
 int FILE_PATH_MAX ;
 int HTTPD_400_BAD_REQUEST ;
 int HTTPD_500_INTERNAL_SERVER_ERROR ;
 int TAG ;
 char* get_path_from_uri (char*,int ,int,int) ;
 int httpd_resp_send_err (TYPE_1__*,int ,char*) ;
 int httpd_resp_sendstr (TYPE_1__*,char*) ;
 int httpd_resp_set_hdr (TYPE_1__*,char*,char*) ;
 int httpd_resp_set_status (TYPE_1__*,char*) ;
 int stat (char*,struct stat*) ;
 int strlen (char const*) ;
 int unlink (char*) ;

__attribute__((used)) static esp_err_t delete_post_handler(httpd_req_t *req)
{
    char filepath[FILE_PATH_MAX];
    struct stat file_stat;



    const char *filename = get_path_from_uri(filepath, ((struct file_server_data *)req->user_ctx)->base_path,
                                             req->uri + sizeof("/delete") - 1, sizeof(filepath));
    if (!filename) {

        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Filename too long");
        return ESP_FAIL;
    }


    if (filename[strlen(filename) - 1] == '/') {
        ESP_LOGE(TAG, "Invalid filename : %s", filename);
        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Invalid filename");
        return ESP_FAIL;
    }

    if (stat(filepath, &file_stat) == -1) {
        ESP_LOGE(TAG, "File does not exist : %s", filename);

        httpd_resp_send_err(req, HTTPD_400_BAD_REQUEST, "File does not exist");
        return ESP_FAIL;
    }

    ESP_LOGI(TAG, "Deleting file : %s", filename);

    unlink(filepath);


    httpd_resp_set_status(req, "303 See Other");
    httpd_resp_set_hdr(req, "Location", "/");
    httpd_resp_sendstr(req, "File deleted successfully");
    return ESP_OK;
}
