
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ssize_t ;
typedef int protocomm_security_pop_t ;
typedef int protocomm_security_handle_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_12__ {scalar_t__ sec_ver; } ;
struct TYPE_11__ {scalar_t__ ver; } ;
typedef TYPE_1__ SessionData ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ malloc (int ) ;
 TYPE_10__ protocomm_security0 ;
 scalar_t__ sec0_session_setup (int ,TYPE_1__*,TYPE_1__*,int const*) ;
 int sec0_session_setup_cleanup (int ,TYPE_1__*) ;
 int session_data__free_unpacked (TYPE_1__*,int *) ;
 int session_data__get_packed_size (TYPE_1__*) ;
 int session_data__init (TYPE_1__*) ;
 int session_data__pack (TYPE_1__*,int *) ;
 TYPE_1__* session_data__unpack (int *,int ,int const*) ;

__attribute__((used)) static esp_err_t sec0_req_handler(protocomm_security_handle_t handle,
                                  const protocomm_security_pop_t *pop,
                                  uint32_t session_id,
                                  const uint8_t *inbuf, ssize_t inlen,
                                  uint8_t **outbuf, ssize_t *outlen,
                                  void *priv_data)
{
    SessionData *req;
    SessionData resp;
    esp_err_t ret;

    req = session_data__unpack(((void*)0), inlen, inbuf);
    if (!req) {
        ESP_LOGE(TAG, "Unable to unpack setup_req");
        return ESP_ERR_INVALID_ARG;
    }
    if (req->sec_ver != protocomm_security0.ver) {
        ESP_LOGE(TAG, "Security version mismatch. Closing connection");
        session_data__free_unpacked(req, ((void*)0));
        return ESP_ERR_INVALID_ARG;
    }

    session_data__init(&resp);
    ret = sec0_session_setup(session_id, req, &resp, pop);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Session setup error %d", ret);
        session_data__free_unpacked(req, ((void*)0));
        return ESP_FAIL;
    }

    resp.sec_ver = req->sec_ver;
    session_data__free_unpacked(req, ((void*)0));

    *outlen = session_data__get_packed_size(&resp);
    *outbuf = (uint8_t *) malloc(*outlen);
    if (!*outbuf) {
        ESP_LOGE(TAG, "System out of memory");
        return ESP_ERR_NO_MEM;
    }
    session_data__pack(&resp, *outbuf);

    sec0_session_setup_cleanup(session_id, &resp);
    return ESP_OK;
}
