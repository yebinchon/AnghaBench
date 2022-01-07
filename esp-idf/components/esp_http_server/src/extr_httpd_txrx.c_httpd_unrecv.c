
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct httpd_req_aux {TYPE_1__* sd; } ;
struct httpd_req {struct httpd_req_aux* aux; } ;
struct TYPE_2__ {size_t pending_len; scalar_t__ pending_data; } ;


 int ESP_LOGD (int ,int ,size_t) ;
 int LOG_FMT (char*) ;
 size_t MIN (int,size_t) ;
 int TAG ;
 int memcpy (scalar_t__,char const*,size_t) ;

size_t httpd_unrecv(struct httpd_req *r, const char *buf, size_t buf_len)
{
    struct httpd_req_aux *ra = r->aux;

    ra->sd->pending_len = MIN(sizeof(ra->sd->pending_data), buf_len);



    size_t offset = sizeof(ra->sd->pending_data) - ra->sd->pending_len;
    memcpy(ra->sd->pending_data + offset, buf, ra->sd->pending_len);
    ESP_LOGD(TAG, LOG_FMT("length = %d"), ra->sd->pending_len);
    return ra->sd->pending_len;
}
