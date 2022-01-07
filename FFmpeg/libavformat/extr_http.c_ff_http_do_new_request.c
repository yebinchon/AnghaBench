
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;


 int ff_http_do_new_request2 (int *,char const*,int *) ;

int ff_http_do_new_request(URLContext *h, const char *uri) {
    return ff_http_do_new_request2(h, uri, ((void*)0));
}
