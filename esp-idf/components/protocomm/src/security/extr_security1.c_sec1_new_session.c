
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ session_t ;
typedef scalar_t__ protocomm_security_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 int TAG ;
 int sec1_close_session (TYPE_1__*,int) ;

__attribute__((used)) static esp_err_t sec1_new_session(protocomm_security_handle_t handle, uint32_t session_id)
{
    session_t *cur_session = (session_t *) handle;
    if (!cur_session) {
        return ESP_ERR_INVALID_ARG;
    }

    if (cur_session->id != -1) {

        ESP_LOGE(TAG, "Closing old session with id %u", cur_session->id);
        sec1_close_session(cur_session, session_id);
    }

    cur_session->id = session_id;
    return ESP_OK;
}
