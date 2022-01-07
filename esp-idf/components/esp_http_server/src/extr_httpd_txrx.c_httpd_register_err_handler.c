
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpd_data {int * err_handler_fns; } ;
typedef int * httpd_handle_t ;
typedef int httpd_err_handler_func_t ;
typedef size_t httpd_err_code_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 size_t HTTPD_ERR_CODE_MAX ;

esp_err_t httpd_register_err_handler(httpd_handle_t handle,
                                     httpd_err_code_t error,
                                     httpd_err_handler_func_t err_handler_fn)
{
    if (handle == ((void*)0) || error >= HTTPD_ERR_CODE_MAX) {
        return ESP_ERR_INVALID_ARG;
    }

    struct httpd_data *hd = (struct httpd_data *) handle;
    hd->err_handler_fns[error] = err_handler_fn;
    return ESP_OK;
}
