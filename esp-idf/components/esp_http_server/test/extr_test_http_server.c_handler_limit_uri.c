
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* uri; int * user_ctx; int handler; int method; } ;
typedef TYPE_1__ httpd_uri_t ;


 int HTTP_GET ;
 int null_func ;

httpd_uri_t handler_limit_uri (char* path)
{
    httpd_uri_t uri = {
        .uri = path,
        .method = HTTP_GET,
        .handler = null_func,
        .user_ctx = ((void*)0),
    };
    return uri;
}
