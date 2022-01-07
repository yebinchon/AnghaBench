
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_size; } ;
struct dirent {scalar_t__ d_type; char const* d_name; } ;
struct TYPE_6__ {char* uri; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int esp_err_t ;
typedef int entrypath ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,char const*,...) ;
 int ESP_LOGI (int ,char*,char const*,char const*,char*) ;
 int ESP_OK ;
 int FILE_PATH_MAX ;
 int HTTPD_404_NOT_FOUND ;
 int TAG ;
 int closedir (int *) ;
 int httpd_resp_send_chunk (TYPE_1__*,char const*,size_t const) ;
 int httpd_resp_send_err (TYPE_1__*,int ,char*) ;
 int httpd_resp_sendstr_chunk (TYPE_1__*,char const*) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int sprintf (char*,char*,int ) ;
 int stat (char*,struct stat*) ;
 int strlcpy (char*,char const*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static esp_err_t http_resp_dir_html(httpd_req_t *req, const char *dirpath)
{
    char entrypath[FILE_PATH_MAX];
    char entrysize[16];
    const char *entrytype;

    struct dirent *entry;
    struct stat entry_stat;

    DIR *dir = opendir(dirpath);
    const size_t dirpath_len = strlen(dirpath);


    strlcpy(entrypath, dirpath, sizeof(entrypath));

    if (!dir) {
        ESP_LOGE(TAG, "Failed to stat dir : %s", dirpath);

        httpd_resp_send_err(req, HTTPD_404_NOT_FOUND, "Directory does not exist");
        return ESP_FAIL;
    }


    httpd_resp_sendstr_chunk(req, "<!DOCTYPE html><html><body>");


    extern const unsigned char upload_script_start[] asm("_binary_upload_script_html_start");
    extern const unsigned char upload_script_end[] asm("_binary_upload_script_html_end");
    const size_t upload_script_size = (upload_script_end - upload_script_start);


    httpd_resp_send_chunk(req, (const char *)upload_script_start, upload_script_size);


    httpd_resp_sendstr_chunk(req,
        "<table class=\"fixed\" border=\"1\">"
        "<col width=\"800px\" /><col width=\"300px\" /><col width=\"300px\" /><col width=\"100px\" />"
        "<thead><tr><th>Name</th><th>Type</th><th>Size (Bytes)</th><th>Delete</th></tr></thead>"
        "<tbody>");


    while ((entry = readdir(dir)) != ((void*)0)) {
        entrytype = (entry->d_type == DT_DIR ? "directory" : "file");

        strlcpy(entrypath + dirpath_len, entry->d_name, sizeof(entrypath) - dirpath_len);
        if (stat(entrypath, &entry_stat) == -1) {
            ESP_LOGE(TAG, "Failed to stat %s : %s", entrytype, entry->d_name);
            continue;
        }
        sprintf(entrysize, "%ld", entry_stat.st_size);
        ESP_LOGI(TAG, "Found %s : %s (%s bytes)", entrytype, entry->d_name, entrysize);


        httpd_resp_sendstr_chunk(req, "<tr><td><a href=\"");
        httpd_resp_sendstr_chunk(req, req->uri);
        httpd_resp_sendstr_chunk(req, entry->d_name);
        if (entry->d_type == DT_DIR) {
            httpd_resp_sendstr_chunk(req, "/");
        }
        httpd_resp_sendstr_chunk(req, "\">");
        httpd_resp_sendstr_chunk(req, entry->d_name);
        httpd_resp_sendstr_chunk(req, "</a></td><td>");
        httpd_resp_sendstr_chunk(req, entrytype);
        httpd_resp_sendstr_chunk(req, "</td><td>");
        httpd_resp_sendstr_chunk(req, entrysize);
        httpd_resp_sendstr_chunk(req, "</td><td>");
        httpd_resp_sendstr_chunk(req, "<form method=\"post\" action=\"/delete");
        httpd_resp_sendstr_chunk(req, req->uri);
        httpd_resp_sendstr_chunk(req, entry->d_name);
        httpd_resp_sendstr_chunk(req, "\"><button type=\"submit\">Delete</button></form>");
        httpd_resp_sendstr_chunk(req, "</td></tr>\n");
    }
    closedir(dir);


    httpd_resp_sendstr_chunk(req, "</tbody></table>");


    httpd_resp_sendstr_chunk(req, "</body></html>");


    httpd_resp_sendstr_chunk(req, ((void*)0));
    return ESP_OK;
}
