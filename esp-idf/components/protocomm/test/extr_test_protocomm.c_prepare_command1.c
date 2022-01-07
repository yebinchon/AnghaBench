
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {TYPE_5__* sc1; int payload_case; int msg; } ;
typedef TYPE_2__ uint8_t ;
struct TYPE_17__ {int device_pubkey; int stb; int rand; scalar_t__ nc_off; int ctx_aes; int sym_key; } ;
typedef TYPE_3__ session_t ;
typedef int esp_err_t ;
struct TYPE_20__ {int ver; } ;
struct TYPE_15__ {int len; TYPE_2__* data; } ;
struct TYPE_19__ {TYPE_1__ client_verify_data; } ;
struct TYPE_18__ {TYPE_2__* sec1; int sec_ver; int proto_case; } ;
typedef TYPE_4__ SessionData ;
typedef TYPE_5__ SessionCmd1 ;
typedef TYPE_2__ Sec1Payload ;


 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_OK ;
 int PUBLIC_KEY_LEN ;
 int SEC1_MSG_TYPE__Session_Command1 ;
 int SEC1_PAYLOAD__PAYLOAD_SC1 ;
 int SESSION_DATA__PROTO_SEC1 ;
 int TAG ;
 int free (TYPE_2__*) ;
 int hexdump (char*,TYPE_2__*,int) ;
 scalar_t__ malloc (int) ;
 int mbedtls_aes_crypt_ctr (int *,int,scalar_t__*,int ,int ,int ,TYPE_2__*) ;
 int mbedtls_aes_init (int *) ;
 int mbedtls_aes_setkey_enc (int *,int ,int) ;
 int memset (int ,int ,int) ;
 TYPE_9__ protocomm_security1 ;
 int sec1_payload__init (TYPE_2__*) ;
 int session_cmd1__init (TYPE_5__*) ;

__attribute__((used)) static esp_err_t prepare_command1(session_t *session, SessionData *req)
{
    int ret;
    uint8_t *outbuf = (uint8_t *) malloc(PUBLIC_KEY_LEN);
    if (!outbuf) {
        ESP_LOGE(TAG, "Error allocating ciphertext buffer");
        return ESP_ERR_NO_MEM;
    }


    mbedtls_aes_init(&session->ctx_aes);
    memset(session->stb, 0, sizeof(session->stb));
    session->nc_off = 0;

    ret = mbedtls_aes_setkey_enc(&session->ctx_aes, session->sym_key,
                                 sizeof(session->sym_key)*8);
    if (ret != 0) {
        ESP_LOGE(TAG, "Failed at mbedtls_aes_setkey_enc with erro code : %d", ret);
        free(outbuf);
        return ESP_FAIL;
    }

    ret = mbedtls_aes_crypt_ctr(&session->ctx_aes, PUBLIC_KEY_LEN,
                                &session->nc_off, session->rand,
                                session->stb, session->device_pubkey, outbuf);
    if (ret != 0) {
        ESP_LOGE(TAG, "Failed at mbedtls_aes_crypt_ctr with erro code : %d", ret);
        free(outbuf);
        return ESP_FAIL;
    }

    Sec1Payload *out = (Sec1Payload *) malloc(sizeof(Sec1Payload));
    if (!out) {
        ESP_LOGE(TAG, "Error allocating out buffer");
        free(outbuf);
        return ESP_ERR_NO_MEM;
    }
    sec1_payload__init(out);

    SessionCmd1 *out_req = (SessionCmd1 *) malloc(sizeof(SessionCmd1));
    if (!out_req) {
        ESP_LOGE(TAG, "Error allocating out_req buffer");
        free(outbuf);
        free(out);
        return ESP_ERR_NO_MEM;
    }
    session_cmd1__init(out_req);

    out_req->client_verify_data.data = outbuf;
    out_req->client_verify_data.len = PUBLIC_KEY_LEN;
    hexdump("Client verify data", outbuf, PUBLIC_KEY_LEN);

    out->msg = SEC1_MSG_TYPE__Session_Command1;
    out->payload_case = SEC1_PAYLOAD__PAYLOAD_SC1;
    out->sc1 = out_req;

    req->proto_case = SESSION_DATA__PROTO_SEC1;
    req->sec_ver = protocomm_security1.ver;
    req->sec1 = out;

    return ESP_OK;
}
