
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpd_req_aux {struct httpd_data* resp_hdrs; } ;
struct httpd_data {struct httpd_data* hd_calls; struct httpd_data* hd_sd; struct httpd_data* err_handler_fns; struct httpd_req_aux hd_req_aux; } ;


 int free (struct httpd_data*) ;
 int httpd_unregister_all_uri_handlers (struct httpd_data*) ;

__attribute__((used)) static void httpd_delete(struct httpd_data *hd)
{
    struct httpd_req_aux *ra = &hd->hd_req_aux;

    free(hd->err_handler_fns);
    free(ra->resp_hdrs);
    free(hd->hd_sd);


    httpd_unregister_all_uri_handlers(hd);
    free(hd->hd_calls);
    free(hd);
}
