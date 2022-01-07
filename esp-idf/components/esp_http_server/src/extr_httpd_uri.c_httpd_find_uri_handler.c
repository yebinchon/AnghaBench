
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_uri_handlers; scalar_t__ (* uri_match_fn ) (int ,char const*,size_t) ;} ;
struct httpd_data {TYPE_2__** hd_calls; TYPE_1__ config; } ;
struct TYPE_5__ {scalar_t__ method; int uri; } ;
typedef TYPE_2__ httpd_uri_t ;
typedef scalar_t__ httpd_method_t ;
typedef scalar_t__ httpd_err_code_t ;


 int ESP_LOGD (int ,int ,int,int ) ;
 scalar_t__ HTTPD_404_NOT_FOUND ;
 scalar_t__ HTTPD_405_METHOD_NOT_ALLOWED ;
 int LOG_FMT (char*) ;
 int TAG ;
 scalar_t__ httpd_uri_match_simple (int ,char const*,size_t) ;
 scalar_t__ stub1 (int ,char const*,size_t) ;

__attribute__((used)) static httpd_uri_t* httpd_find_uri_handler(struct httpd_data *hd,
                                           const char *uri, size_t uri_len,
                                           httpd_method_t method,
                                           httpd_err_code_t *err)
{
    if (err) {
        *err = HTTPD_404_NOT_FOUND;
    }

    for (int i = 0; i < hd->config.max_uri_handlers; i++) {
        if (!hd->hd_calls[i]) {
            break;
        }
        ESP_LOGD(TAG, LOG_FMT("[%d] = %s"), i, hd->hd_calls[i]->uri);



        if (hd->config.uri_match_fn ?
            hd->config.uri_match_fn(hd->hd_calls[i]->uri, uri, uri_len) :
            httpd_uri_match_simple(hd->hd_calls[i]->uri, uri, uri_len)) {

            if (hd->hd_calls[i]->method == method) {

                if (err) {


                    *err = 0;
                }
                return hd->hd_calls[i];
            }



            if (err) {
                *err = HTTPD_405_METHOD_NOT_ALLOWED;
            }
        }
    }
    return ((void*)0);
}
