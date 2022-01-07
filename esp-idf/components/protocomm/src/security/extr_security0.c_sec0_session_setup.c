
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int protocomm_security_pop_t ;
typedef int esp_err_t ;
struct TYPE_10__ {struct TYPE_10__* sr; int payload_case; int msg; int status; } ;
struct TYPE_9__ {TYPE_2__* sec0; int proto_case; } ;
typedef TYPE_1__ SessionData ;
typedef TYPE_2__ Sec0Payload ;
typedef TYPE_2__ S0SessionResp ;


 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int SEC0_MSG_TYPE__S0_Session_Response ;
 int SEC0_PAYLOAD__PAYLOAD_SR ;
 int SESSION_DATA__PROTO_SEC0 ;
 int STATUS__Success ;
 int TAG ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int s0_session_resp__init (TYPE_2__*) ;
 int sec0_payload__init (TYPE_2__*) ;

__attribute__((used)) static esp_err_t sec0_session_setup(uint32_t session_id,
                                    SessionData *req, SessionData *resp,
                                    const protocomm_security_pop_t *pop)
{
    Sec0Payload *out = (Sec0Payload *) malloc(sizeof(Sec0Payload));
    S0SessionResp *s0resp = (S0SessionResp *) malloc(sizeof(S0SessionResp));
    if (!out || !s0resp) {
        ESP_LOGE(TAG, "Error allocating response");
        free(out);
        free(s0resp);
        return ESP_ERR_NO_MEM;
    }
    sec0_payload__init(out);
    s0_session_resp__init(s0resp);
    s0resp->status = STATUS__Success;

    out->msg = SEC0_MSG_TYPE__S0_Session_Response;
    out->payload_case = SEC0_PAYLOAD__PAYLOAD_SR;
    out->sr = s0resp;

    resp->proto_case = SESSION_DATA__PROTO_SEC0;
    resp->sec0 = out;

    return ESP_OK;
}
