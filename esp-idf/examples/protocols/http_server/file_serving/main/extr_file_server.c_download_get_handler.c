
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct stat {int st_size; } ;
struct file_server_data {char* scratch; int base_path; } ;
struct TYPE_10__ {scalar_t__ user_ctx; int uri; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int filepath ;
typedef scalar_t__ esp_err_t ;
typedef int FILE ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int FILE_PATH_MAX ;
 int HTTPD_404_NOT_FOUND ;
 int HTTPD_500_INTERNAL_SERVER_ERROR ;
 int SCRATCH_BUFSIZE ;
 int TAG ;
 scalar_t__ favicon_get_handler (TYPE_1__*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,int ,int *) ;
 char* get_path_from_uri (char*,int ,int ,int) ;
 scalar_t__ http_resp_dir_html (TYPE_1__*,char*) ;
 scalar_t__ httpd_resp_send_chunk (TYPE_1__*,char*,size_t) ;
 int httpd_resp_send_err (TYPE_1__*,int ,char*) ;
 int httpd_resp_sendstr_chunk (TYPE_1__*,int *) ;
 scalar_t__ index_html_get_handler (TYPE_1__*) ;
 int set_content_type_from_file (TYPE_1__*,char const*) ;
 int stat (char*,struct stat*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static esp_err_t download_get_handler(httpd_req_t *req)
{
    char filepath[FILE_PATH_MAX];
    FILE *fd = ((void*)0);
    struct stat file_stat;

    const char *filename = get_path_from_uri(filepath, ((struct file_server_data *)req->user_ctx)->base_path,
                                             req->uri, sizeof(filepath));
    if (!filename) {
        ESP_LOGE(TAG, "Filename is too long");

        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Filename too long");
        return ESP_FAIL;
    }


    if (filename[strlen(filename) - 1] == '/') {
        return http_resp_dir_html(req, filepath);
    }

    if (stat(filepath, &file_stat) == -1) {


        if (strcmp(filename, "/index.html") == 0) {
            return index_html_get_handler(req);
        } else if (strcmp(filename, "/favicon.ico") == 0) {
            return favicon_get_handler(req);
        }
        ESP_LOGE(TAG, "Failed to stat file : %s", filepath);

        httpd_resp_send_err(req, HTTPD_404_NOT_FOUND, "File does not exist");
        return ESP_FAIL;
    }

    fd = fopen(filepath, "r");
    if (!fd) {
        ESP_LOGE(TAG, "Failed to read existing file : %s", filepath);

        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Failed to read existing file");
        return ESP_FAIL;
    }

    ESP_LOGI(TAG, "Sending file : %s (%ld bytes)...", filename, file_stat.st_size);
    set_content_type_from_file(req, filename);


    char *chunk = ((struct file_server_data *)req->user_ctx)->scratch;
    size_t chunksize;
    do {

        chunksize = fread(chunk, 1, SCRATCH_BUFSIZE, fd);


        if (httpd_resp_send_chunk(req, chunk, chunksize) != ESP_OK) {
            fclose(fd);
            ESP_LOGE(TAG, "File sending failed!");

            httpd_resp_sendstr_chunk(req, ((void*)0));

            httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Failed to send file");
            return ESP_FAIL;
        }


    } while (chunksize != 0);


    fclose(fd);
    ESP_LOGI(TAG, "File sending complete");


    httpd_resp_send_chunk(req, ((void*)0), 0);
    return ESP_OK;
}
