
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock_db {int dummy; } ;
struct resp_hdr {int dummy; } ;
struct httpd_req_aux {struct httpd_data* resp_hdrs; } ;
struct TYPE_3__ {int max_uri_handlers; int max_open_sockets; int max_resp_headers; } ;
struct httpd_data {TYPE_1__ config; struct httpd_data* hd_calls; struct httpd_data* hd_sd; void* err_handler_fns; struct httpd_req_aux hd_req_aux; } ;
typedef int httpd_uri_t ;
typedef int httpd_err_handler_func_t ;
typedef TYPE_1__ httpd_config_t ;


 int ESP_LOGE (int ,int ) ;
 int HTTPD_ERR_CODE_MAX ;
 int LOG_FMT (char*) ;
 int TAG ;
 void* calloc (int,int) ;
 int free (struct httpd_data*) ;

__attribute__((used)) static struct httpd_data *httpd_create(const httpd_config_t *config)
{

    struct httpd_data *hd = calloc(1, sizeof(struct httpd_data));
    if (!hd) {
        ESP_LOGE(TAG, LOG_FMT("Failed to allocate memory for HTTP server instance"));
        return ((void*)0);
    }
    hd->hd_calls = calloc(config->max_uri_handlers, sizeof(httpd_uri_t *));
    if (!hd->hd_calls) {
        ESP_LOGE(TAG, LOG_FMT("Failed to allocate memory for HTTP URI handlers"));
        free(hd);
        return ((void*)0);
    }
    hd->hd_sd = calloc(config->max_open_sockets, sizeof(struct sock_db));
    if (!hd->hd_sd) {
        ESP_LOGE(TAG, LOG_FMT("Failed to allocate memory for HTTP session data"));
        free(hd->hd_calls);
        free(hd);
        return ((void*)0);
    }
    struct httpd_req_aux *ra = &hd->hd_req_aux;
    ra->resp_hdrs = calloc(config->max_resp_headers, sizeof(struct resp_hdr));
    if (!ra->resp_hdrs) {
        ESP_LOGE(TAG, LOG_FMT("Failed to allocate memory for HTTP response headers"));
        free(hd->hd_sd);
        free(hd->hd_calls);
        free(hd);
        return ((void*)0);
    }
    hd->err_handler_fns = calloc(HTTPD_ERR_CODE_MAX, sizeof(httpd_err_handler_func_t));
    if (!hd->err_handler_fns) {
        ESP_LOGE(TAG, LOG_FMT("Failed to allocate memory for HTTP error handlers"));
        free(ra->resp_hdrs);
        free(hd->hd_sd);
        free(hd->hd_calls);
        free(hd);
        return ((void*)0);
    }

    hd->config = *config;
    return hd;
}
