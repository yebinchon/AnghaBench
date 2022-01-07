
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ session_t ;
typedef scalar_t__ protocomm_security_handle_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int free (scalar_t__) ;
 int sec1_close_session (scalar_t__,int ) ;

__attribute__((used)) static esp_err_t sec1_cleanup(protocomm_security_handle_t handle)
{
    session_t *cur_session = (session_t *) handle;
    if (cur_session) {
        sec1_close_session(handle, cur_session->id);
    }
    free(handle);
    return ESP_OK;
}
