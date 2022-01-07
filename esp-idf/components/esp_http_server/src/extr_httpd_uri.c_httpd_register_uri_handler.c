
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int max_uri_handlers; } ;
struct httpd_data {TYPE_3__** hd_calls; TYPE_1__ config; } ;
struct TYPE_7__ {int * uri; int user_ctx; int handler; int method; } ;
typedef TYPE_2__ httpd_uri_t ;
typedef int * httpd_handle_t ;
typedef int esp_err_t ;
struct TYPE_8__ {int * uri; int user_ctx; int handler; int method; } ;


 int ESP_ERR_HTTPD_ALLOC_MEM ;
 int ESP_ERR_HTTPD_HANDLERS_FULL ;
 int ESP_ERR_HTTPD_HANDLER_EXISTS ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGD (int ,int ,int,int *) ;
 int ESP_LOGW (int ,int ,...) ;
 int ESP_OK ;
 int LOG_FMT (char*) ;
 int TAG ;
 int free (TYPE_3__*) ;
 int * httpd_find_uri_handler (int *,int *,int ,int ,int *) ;
 TYPE_3__* malloc (int) ;
 int * strdup (int *) ;
 int strlen (int *) ;

esp_err_t httpd_register_uri_handler(httpd_handle_t handle,
                                     const httpd_uri_t *uri_handler)
{
    if (handle == ((void*)0) || uri_handler == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    struct httpd_data *hd = (struct httpd_data *) handle;





    if (httpd_find_uri_handler(handle, uri_handler->uri,
                               strlen(uri_handler->uri),
                               uri_handler->method, ((void*)0)) != ((void*)0)) {
        ESP_LOGW(TAG, LOG_FMT("handler %s with method %d already registered"),
                 uri_handler->uri, uri_handler->method);
        return ESP_ERR_HTTPD_HANDLER_EXISTS;
    }

    for (int i = 0; i < hd->config.max_uri_handlers; i++) {
        if (hd->hd_calls[i] == ((void*)0)) {
            hd->hd_calls[i] = malloc(sizeof(httpd_uri_t));
            if (hd->hd_calls[i] == ((void*)0)) {

                return ESP_ERR_HTTPD_ALLOC_MEM;
            }


            hd->hd_calls[i]->uri = strdup(uri_handler->uri);
            if (hd->hd_calls[i]->uri == ((void*)0)) {

                free(hd->hd_calls[i]);
                return ESP_ERR_HTTPD_ALLOC_MEM;
            }


            hd->hd_calls[i]->method = uri_handler->method;
            hd->hd_calls[i]->handler = uri_handler->handler;
            hd->hd_calls[i]->user_ctx = uri_handler->user_ctx;
            ESP_LOGD(TAG, LOG_FMT("[%d] installed %s"), i, uri_handler->uri);
            return ESP_OK;
        }
        ESP_LOGD(TAG, LOG_FMT("[%d] exists %s"), i, hd->hd_calls[i]->uri);
    }
    ESP_LOGW(TAG, LOG_FMT("no slots left for registering handler"));
    return ESP_ERR_HTTPD_HANDLERS_FULL;
}
