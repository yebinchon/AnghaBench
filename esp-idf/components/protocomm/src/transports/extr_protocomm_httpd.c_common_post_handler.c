
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char uint8_t ;
typedef int ssize_t ;
struct TYPE_10__ {scalar_t__ content_len; char* uri; } ;
typedef TYPE_2__ httpd_req_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_11__ {int sec_inst; TYPE_1__* sec; } ;
struct TYPE_9__ {scalar_t__ (* close_transport_session ) (int ,int) ;scalar_t__ (* new_transport_session ) (int ,int) ;} ;


 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*,int) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGW (int ,char*,int) ;
 scalar_t__ ESP_OK ;
 scalar_t__ MAX_REQ_BODY_LEN ;
 int PROTOCOMM_NO_SESSION_ID ;
 int TAG ;
 int free (char*) ;
 scalar_t__ httpd_req_recv (TYPE_2__*,char*,size_t) ;
 int httpd_req_to_sockfd (TYPE_2__*) ;
 scalar_t__ httpd_resp_send (TYPE_2__*,char*,int ) ;
 scalar_t__ malloc (scalar_t__) ;
 TYPE_3__* pc_httpd ;
 scalar_t__ protocomm_req_handle (TYPE_3__*,char const*,int,char*,size_t,char**,int *) ;
 int session_id ;
 scalar_t__ stub1 (int ,int) ;
 scalar_t__ stub2 (int ,int) ;

__attribute__((used)) static esp_err_t common_post_handler(httpd_req_t *req)
{
    esp_err_t ret;
    uint8_t *outbuf = ((void*)0);
    char *req_body = ((void*)0);
    const char *ep_name = ((void*)0);
    ssize_t outlen;

    int cur_session_id = httpd_req_to_sockfd(req);

    if (cur_session_id != session_id) {

        if (session_id != PROTOCOMM_NO_SESSION_ID) {
            ESP_LOGD(TAG, "Closing session with ID: %d", session_id);


            if (pc_httpd->sec && pc_httpd->sec->close_transport_session) {
                ret = pc_httpd->sec->close_transport_session(pc_httpd->sec_inst, session_id);
                if (ret != ESP_OK) {
                    ESP_LOGW(TAG, "Error closing session with ID: %d", session_id);
                }
            }
            session_id = PROTOCOMM_NO_SESSION_ID;
        }
        if (pc_httpd->sec && pc_httpd->sec->new_transport_session) {
            ret = pc_httpd->sec->new_transport_session(pc_httpd->sec_inst, cur_session_id);
            if (ret != ESP_OK) {
                ESP_LOGE(TAG, "Failed to launch new session with ID: %d", cur_session_id);
                ret = ESP_FAIL;
                goto out;
            }
        }
        session_id = cur_session_id;
        ESP_LOGD(TAG, "New session with ID: %d", cur_session_id);
    }

    if (req->content_len <= 0) {
        ESP_LOGE(TAG, "Content length not found");
        ret = ESP_FAIL;
        goto out;
    } else if (req->content_len > MAX_REQ_BODY_LEN) {
        ESP_LOGE(TAG, "Request content length should be less than 4kb");
        ret = ESP_FAIL;
        goto out;
    }

    req_body = (char *) malloc(req->content_len);
    if (!req_body) {
        ESP_LOGE(TAG, "Unable to allocate for request length %d", req->content_len);
        ret = ESP_ERR_NO_MEM;
        goto out;
    }

    size_t recv_size = 0;
    while (recv_size < req->content_len) {
        ret = httpd_req_recv(req, req_body + recv_size, req->content_len - recv_size);
        if (ret < 0) {
            ret = ESP_FAIL;
            goto out;
        }
        recv_size += ret;
    }


    ep_name = req->uri + 1;

    ret = protocomm_req_handle(pc_httpd, ep_name, session_id,
                               (uint8_t *)req_body, recv_size, &outbuf, &outlen);

    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Data handler failed");
        ret = ESP_FAIL;
        goto out;
    }

    ret = httpd_resp_send(req, (char *)outbuf, outlen);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "HTTP send failed");
        ret = ESP_FAIL;
        goto out;
    }
    ret = ESP_OK;
out:
    if (req_body) {
        free(req_body);
    }
    if (outbuf) {
        free(outbuf);
    }
    return ret;
}
