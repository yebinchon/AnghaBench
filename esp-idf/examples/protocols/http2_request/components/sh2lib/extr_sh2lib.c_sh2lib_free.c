
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh2lib_handle {int * hostname; int * http2_tls; int * http2_sess; } ;


 int esp_tls_conn_delete (int *) ;
 int free (int *) ;
 int nghttp2_session_del (int *) ;

void sh2lib_free(struct sh2lib_handle *hd)
{
    if (hd->http2_sess) {
        nghttp2_session_del(hd->http2_sess);
        hd->http2_sess = ((void*)0);
    }
    if (hd->http2_tls) {
 esp_tls_conn_delete(hd->http2_tls);
        hd->http2_tls = ((void*)0);
    }
    if (hd->hostname) {
        free(hd->hostname);
        hd->hostname = ((void*)0);
    }
}
