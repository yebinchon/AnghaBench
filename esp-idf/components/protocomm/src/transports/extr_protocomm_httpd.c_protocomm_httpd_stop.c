
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * priv; } ;
typedef TYPE_1__ protocomm_t ;
typedef int httpd_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int PROTOCOMM_NO_SESSION_ID ;
 int free (int *) ;
 int httpd_stop (int ) ;
 int pc_ext_httpd_handle_provided ;
 TYPE_1__* pc_httpd ;
 int session_id ;

esp_err_t protocomm_httpd_stop(protocomm_t *pc)
{
    if ((pc != ((void*)0)) && (pc == pc_httpd)) {
        if (!pc_ext_httpd_handle_provided) {
            httpd_handle_t *server_handle = (httpd_handle_t *) pc_httpd->priv;
            httpd_stop(*server_handle);
            free(server_handle);
        } else {
            pc_ext_httpd_handle_provided = 0;
        }
        pc_httpd->priv = ((void*)0);
        pc_httpd = ((void*)0);
        session_id = PROTOCOMM_NO_SESSION_ID;
        return ESP_OK;
    }
    return ESP_ERR_INVALID_ARG;
}
