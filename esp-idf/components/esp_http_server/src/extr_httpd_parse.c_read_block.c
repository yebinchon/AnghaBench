
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct httpd_req_aux {scalar_t__ scratch; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {struct httpd_req_aux* aux; } ;
typedef TYPE_1__ httpd_req_t ;


 int ESP_LOGD (int ,int ,...) ;
 scalar_t__ ESP_OK ;
 int HTTPD_408_REQ_TIMEOUT ;
 int HTTPD_SOCK_ERR_FAIL ;
 int HTTPD_SOCK_ERR_TIMEOUT ;
 int LOG_FMT (char*) ;
 scalar_t__ MIN (size_t,int) ;
 int TAG ;
 int httpd_recv_with_opt (TYPE_1__*,scalar_t__,scalar_t__,int) ;
 scalar_t__ httpd_req_handle_err (TYPE_1__*,int ) ;

__attribute__((used)) static int read_block(httpd_req_t *req, size_t offset, size_t length)
{
    struct httpd_req_aux *raux = req->aux;


    ssize_t buf_len = MIN(length, (sizeof(raux->scratch) - offset));
    if (buf_len <= 0) {
        return 0;
    }




    int nbytes = httpd_recv_with_opt(req, raux->scratch + offset, buf_len, 1);
    if (nbytes < 0) {
        ESP_LOGD(TAG, LOG_FMT("error in httpd_recv"));


        if (nbytes == HTTPD_SOCK_ERR_TIMEOUT) {



            return (httpd_req_handle_err(req, HTTPD_408_REQ_TIMEOUT) == ESP_OK) ?
                    HTTPD_SOCK_ERR_TIMEOUT : HTTPD_SOCK_ERR_FAIL;
        }




        return HTTPD_SOCK_ERR_FAIL;
    } else if (nbytes == 0) {
        ESP_LOGD(TAG, LOG_FMT("connection closed"));


        return HTTPD_SOCK_ERR_FAIL;
    }

    ESP_LOGD(TAG, LOG_FMT("received HTTP request block size = %d"), nbytes);
    return nbytes;
}
