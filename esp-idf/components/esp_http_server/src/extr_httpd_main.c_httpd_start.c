
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int core_id; int task_priority; int stack_size; } ;
struct TYPE_6__ {int handle; } ;
struct httpd_data {TYPE_2__ config; TYPE_1__ hd_td; } ;
typedef int **** httpd_handle_t ;
struct TYPE_8__ {scalar_t__ max_open_sockets; } ;
typedef TYPE_3__ httpd_config_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ CONFIG_LWIP_MAX_SOCKETS ;
 scalar_t__ ESP_ERR_HTTPD_ALLOC_MEM ;
 scalar_t__ ESP_ERR_HTTPD_TASK ;
 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 struct httpd_data* httpd_create (TYPE_3__ const*) ;
 int httpd_delete (struct httpd_data*) ;
 scalar_t__ httpd_os_thread_create (int *,char*,int ,int ,int ,struct httpd_data*,int ) ;
 scalar_t__ httpd_server_init (struct httpd_data*) ;
 int httpd_sess_init (struct httpd_data*) ;
 int httpd_thread ;

esp_err_t httpd_start(httpd_handle_t *handle, const httpd_config_t *config)
{
    if (handle == ((void*)0) || config == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (CONFIG_LWIP_MAX_SOCKETS < config->max_open_sockets + 3) {
        ESP_LOGE(TAG, "Configuration option max_open_sockets is too large (max allowed %d)\n\t"
                      "Either decrease this or configure LWIP_MAX_SOCKETS to a larger value",
                      CONFIG_LWIP_MAX_SOCKETS - 3);
        return ESP_ERR_INVALID_ARG;
    }

    struct httpd_data *hd = httpd_create(config);
    if (hd == ((void*)0)) {

        return ESP_ERR_HTTPD_ALLOC_MEM;
    }

    if (httpd_server_init(hd) != ESP_OK) {
        httpd_delete(hd);
        return ESP_FAIL;
    }

    httpd_sess_init(hd);
    if (httpd_os_thread_create(&hd->hd_td.handle, "httpd",
                               hd->config.stack_size,
                               hd->config.task_priority,
                               httpd_thread, hd,
                               hd->config.core_id) != ESP_OK) {

        httpd_delete(hd);
        return ESP_ERR_HTTPD_TASK;
    }

    *handle = (httpd_handle_t *)hd;
    return ESP_OK;
}
