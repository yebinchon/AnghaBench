
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct httpd_req_aux {TYPE_1__* sd; } ;
struct TYPE_5__ {struct httpd_req_aux* aux; } ;
typedef TYPE_2__ httpd_req_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int (* send_fn ) (int ,int ,char const*,size_t,int ) ;int fd; int handle; } ;


 int ESP_FAIL ;
 int ESP_LOGD (int ,int ,...) ;
 int ESP_OK ;
 int LOG_FMT (char*) ;
 int TAG ;
 int stub1 (int ,int ,char const*,size_t,int ) ;

__attribute__((used)) static esp_err_t httpd_send_all(httpd_req_t *r, const char *buf, size_t buf_len)
{
    struct httpd_req_aux *ra = r->aux;
    int ret;

    while (buf_len > 0) {
        ret = ra->sd->send_fn(ra->sd->handle, ra->sd->fd, buf, buf_len, 0);
        if (ret < 0) {
            ESP_LOGD(TAG, LOG_FMT("error in send_fn"));
            return ESP_FAIL;
        }
        ESP_LOGD(TAG, LOG_FMT("sent = %d"), ret);
        buf += ret;
        buf_len -= ret;
    }
    return ESP_OK;
}
