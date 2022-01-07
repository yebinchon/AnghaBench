
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* scratch; } ;
typedef TYPE_1__ rest_server_context_t ;
struct TYPE_9__ {int content_len; scalar_t__ user_ctx; } ;
typedef TYPE_2__ httpd_req_t ;
typedef int esp_err_t ;
typedef int cJSON ;
struct TYPE_10__ {int valueint; } ;


 int ESP_FAIL ;
 int ESP_LOGI (int ,char*,int,int,int) ;
 int ESP_OK ;
 int HTTPD_500_INTERNAL_SERVER_ERROR ;
 int REST_TAG ;
 int SCRATCH_BUFSIZE ;
 int cJSON_Delete (int *) ;
 TYPE_7__* cJSON_GetObjectItem (int *,char*) ;
 int * cJSON_Parse (char*) ;
 int httpd_req_recv (TYPE_2__*,char*,int) ;
 int httpd_resp_send_err (TYPE_2__*,int ,char*) ;
 int httpd_resp_sendstr (TYPE_2__*,char*) ;

__attribute__((used)) static esp_err_t light_brightness_post_handler(httpd_req_t *req)
{
    int total_len = req->content_len;
    int cur_len = 0;
    char *buf = ((rest_server_context_t *)(req->user_ctx))->scratch;
    int received = 0;
    if (total_len >= SCRATCH_BUFSIZE) {

        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "content too long");
        return ESP_FAIL;
    }
    while (cur_len < total_len) {
        received = httpd_req_recv(req, buf + cur_len, total_len);
        if (received <= 0) {

            httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Failed to post control value");
            return ESP_FAIL;
        }
        cur_len += received;
    }
    buf[total_len] = '\0';

    cJSON *root = cJSON_Parse(buf);
    int red = cJSON_GetObjectItem(root, "red")->valueint;
    int green = cJSON_GetObjectItem(root, "green")->valueint;
    int blue = cJSON_GetObjectItem(root, "blue")->valueint;
    ESP_LOGI(REST_TAG, "Light control: red = %d, green = %d, blue = %d", red, green, blue);
    cJSON_Delete(root);
    httpd_resp_sendstr(req, "Post control value successfully");
    return ESP_OK;
}
