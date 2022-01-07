
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct httpd_req_aux {char* scratch; unsigned int req_hdrs_count; } ;
struct TYPE_4__ {struct httpd_req_aux* aux; } ;
typedef TYPE_1__ httpd_req_t ;


 int httpd_valid_req (TYPE_1__*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

size_t httpd_req_get_hdr_value_len(httpd_req_t *r, const char *field)
{
    if (r == ((void*)0) || field == ((void*)0)) {
        return 0;
    }

    if (!httpd_valid_req(r)) {
        return 0;
    }

    struct httpd_req_aux *ra = r->aux;
    const char *hdr_ptr = ra->scratch;
    unsigned count = ra->req_hdrs_count;

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
        return strlen(val_ptr);
    }
    return 0;
}
