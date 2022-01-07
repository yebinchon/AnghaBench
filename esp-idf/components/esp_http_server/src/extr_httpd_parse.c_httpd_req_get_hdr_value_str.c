
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct httpd_req_aux {char* scratch; unsigned int req_hdrs_count; } ;
struct TYPE_4__ {struct httpd_req_aux* aux; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int esp_err_t ;


 int ESP_ERR_HTTPD_INVALID_REQ ;
 int ESP_ERR_HTTPD_RESULT_TRUNC ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int httpd_valid_req (TYPE_1__*) ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,size_t const) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

esp_err_t httpd_req_get_hdr_value_str(httpd_req_t *r, const char *field, char *val, size_t val_size)
{
    if (r == ((void*)0) || field == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!httpd_valid_req(r)) {
        return ESP_ERR_HTTPD_INVALID_REQ;
    }

    struct httpd_req_aux *ra = r->aux;
    const char *hdr_ptr = ra->scratch;
    unsigned count = ra->req_hdrs_count;
    const size_t buf_len = val_size;

    while (count--) {



        const char *val_ptr = strchr(hdr_ptr, ':');
        if (!val_ptr) {
            break;
        }





        if ((val_ptr - hdr_ptr != strlen(field)) ||
            (strncasecmp(hdr_ptr, field, strlen(field)))) {
            if (count) {

                hdr_ptr = 1 + strchr(hdr_ptr, '\0');



                while (*hdr_ptr == '\0') {
                    hdr_ptr++;
                }
            }
            continue;
        }


        val_ptr++;


        while ((*val_ptr != '\0') && (*val_ptr == ' ')) {
            val_ptr++;
        }


        strlcpy(val, val_ptr, buf_len);


        val_size = strlen(val_ptr) + 1;


        if (buf_len < val_size) {
            return ESP_ERR_HTTPD_RESULT_TRUNC;
        }
        return ESP_OK;
    }
    return ESP_ERR_NOT_FOUND;
}
