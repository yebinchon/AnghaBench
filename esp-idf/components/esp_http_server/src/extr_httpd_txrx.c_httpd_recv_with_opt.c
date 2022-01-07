
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct httpd_req_aux {TYPE_1__* sd; } ;
struct TYPE_6__ {struct httpd_req_aux* aux; } ;
typedef TYPE_2__ httpd_req_t ;
struct TYPE_5__ {int pending_len; int (* recv_fn ) (int ,int ,char*,size_t,int ) ;int fd; int handle; } ;


 int ESP_LOGD (int ,int ,...) ;
 int HTTPD_SOCK_ERR_TIMEOUT ;
 int LOG_FMT (char*) ;
 int TAG ;
 size_t httpd_recv_pending (TYPE_2__*,char*,size_t) ;
 int stub1 (int ,int ,char*,size_t,int ) ;

int httpd_recv_with_opt(httpd_req_t *r, char *buf, size_t buf_len, bool halt_after_pending)
{
    ESP_LOGD(TAG, LOG_FMT("requested length = %d"), buf_len);

    size_t pending_len = 0;
    struct httpd_req_aux *ra = r->aux;


    if (ra->sd->pending_len > 0) {
        ESP_LOGD(TAG, LOG_FMT("pending length = %d"), ra->sd->pending_len);
        pending_len = httpd_recv_pending(r, buf, buf_len);
        buf += pending_len;
        buf_len -= pending_len;




        if (!buf_len || halt_after_pending) {
            return pending_len;
        }
    }


    int ret = ra->sd->recv_fn(ra->sd->handle, ra->sd->fd, buf, buf_len, 0);
    if (ret < 0) {
        ESP_LOGD(TAG, LOG_FMT("error in recv_fn"));
        if ((ret == HTTPD_SOCK_ERR_TIMEOUT) && (pending_len != 0)) {






            return pending_len;
        }
        return ret;
    }

    ESP_LOGD(TAG, LOG_FMT("received length = %d"), ret + pending_len);
    return ret + pending_len;
}
