
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int client_pubkey; } ;
typedef TYPE_2__ session_t ;
typedef int esp_err_t ;
struct TYPE_17__ {int ver; } ;
struct TYPE_16__ {TYPE_4__* sc0; int payload_case; int msg; } ;
struct TYPE_12__ {int len; int data; } ;
struct TYPE_15__ {TYPE_1__ client_pubkey; } ;
struct TYPE_14__ {TYPE_5__* sec1; int sec_ver; int proto_case; } ;
typedef TYPE_3__ SessionData ;
typedef TYPE_4__ SessionCmd0 ;
typedef TYPE_5__ Sec1Payload ;


 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int PUBLIC_KEY_LEN ;
 int SEC1_MSG_TYPE__Session_Command0 ;
 int SEC1_PAYLOAD__PAYLOAD_SC0 ;
 int SESSION_DATA__PROTO_SEC1 ;
 int TAG ;
 int free (TYPE_5__*) ;
 scalar_t__ malloc (int) ;
 TYPE_8__ protocomm_security1 ;
 int sec1_payload__init (TYPE_5__*) ;
 int session_cmd0__init (TYPE_4__*) ;

__attribute__((used)) static esp_err_t prepare_command0(session_t *session, SessionData *req)
{
    Sec1Payload *in = (Sec1Payload *) malloc(sizeof(Sec1Payload));
    if (in == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating memory for request");
        return ESP_ERR_NO_MEM;
    }

    SessionCmd0 *in_req = (SessionCmd0 *) malloc(sizeof(SessionCmd0));
    if (in_req == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating memory for request");
        free(in);
        return ESP_ERR_NO_MEM;
    }

    sec1_payload__init(in);
    session_cmd0__init(in_req);

    in_req->client_pubkey.data = session->client_pubkey;
    in_req->client_pubkey.len = PUBLIC_KEY_LEN;

    in->msg = SEC1_MSG_TYPE__Session_Command0;
    in->payload_case = SEC1_PAYLOAD__PAYLOAD_SC0;
    in->sc0 = in_req;

    req->proto_case = SESSION_DATA__PROTO_SEC1;
    req->sec_ver = protocomm_security1.ver;
    req->sec1 = in;

    return ESP_OK;
}
