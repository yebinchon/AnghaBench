
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int session_t ;
typedef int protocomm_security_pop_t ;
typedef int esp_err_t ;
struct TYPE_10__ {int msg; } ;
struct TYPE_9__ {scalar_t__ sec1; } ;
typedef TYPE_1__ SessionData ;
typedef TYPE_2__ Sec1Payload ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;


 int TAG ;
 int handle_session_command0 (int *,int ,TYPE_1__*,TYPE_1__*,int const*) ;
 int handle_session_command1 (int *,int ,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static esp_err_t sec1_session_setup(session_t *cur_session,
                                    uint32_t session_id,
                                    SessionData *req, SessionData *resp,
                                    const protocomm_security_pop_t *pop)
{
    Sec1Payload *in = (Sec1Payload *) req->sec1;
    esp_err_t ret;

    if (!in) {
        ESP_LOGE(TAG, "Empty session data");
        return ESP_ERR_INVALID_ARG;
    }

    switch (in->msg) {
        case 129:
            ret = handle_session_command0(cur_session, session_id, req, resp, pop);
            break;
        case 128:
            ret = handle_session_command1(cur_session, session_id, req, resp);
            break;
        default:
            ESP_LOGE(TAG, "Invalid security message type");
            ret = ESP_ERR_INVALID_ARG;
    }

    return ret;

}
