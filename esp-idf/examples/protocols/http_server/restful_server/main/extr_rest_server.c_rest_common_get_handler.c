
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_8__ {char* scratch; int base_path; } ;
typedef TYPE_1__ rest_server_context_t ;
struct TYPE_9__ {char* uri; scalar_t__ user_ctx; } ;
typedef TYPE_2__ httpd_req_t ;
typedef int filepath ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int FILE_PATH_MAX ;
 int HTTPD_500_INTERNAL_SERVER_ERROR ;
 int O_RDONLY ;
 int REST_TAG ;
 int SCRATCH_BUFSIZE ;
 int close (int) ;
 scalar_t__ httpd_resp_send_chunk (TYPE_2__*,char*,int) ;
 int httpd_resp_send_err (TYPE_2__*,int ,char*) ;
 int httpd_resp_sendstr_chunk (TYPE_2__*,int *) ;
 int open (char*,int ,int ) ;
 int read (int,char*,int ) ;
 int set_content_type_from_file (TYPE_2__*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static esp_err_t rest_common_get_handler(httpd_req_t *req)
{
    char filepath[FILE_PATH_MAX];

    rest_server_context_t *rest_context = (rest_server_context_t *)req->user_ctx;
    strlcpy(filepath, rest_context->base_path, sizeof(filepath));
    if (req->uri[strlen(req->uri) - 1] == '/') {
        strlcat(filepath, "/index.html", sizeof(filepath));
    } else {
        strlcat(filepath, req->uri, sizeof(filepath));
    }
    int fd = open(filepath, O_RDONLY, 0);
    if (fd == -1) {
        ESP_LOGE(REST_TAG, "Failed to open file : %s", filepath);

        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Failed to read existing file");
        return ESP_FAIL;
    }

    set_content_type_from_file(req, filepath);

    char *chunk = rest_context->scratch;
    ssize_t read_bytes;
    do {

        read_bytes = read(fd, chunk, SCRATCH_BUFSIZE);
        if (read_bytes == -1) {
            ESP_LOGE(REST_TAG, "Failed to read file : %s", filepath);
        } else if (read_bytes > 0) {

            if (httpd_resp_send_chunk(req, chunk, read_bytes) != ESP_OK) {
                close(fd);
                ESP_LOGE(REST_TAG, "File sending failed!");

                httpd_resp_sendstr_chunk(req, ((void*)0));

                httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Failed to send file");
                return ESP_FAIL;
            }
        }
    } while (read_bytes > 0);

    close(fd);
    ESP_LOGI(REST_TAG, "File sending complete");

    httpd_resp_send_chunk(req, ((void*)0), 0);
    return ESP_OK;
}
