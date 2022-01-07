
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_handle_t ;


 int httpd_stop (int ) ;

void httpd_ssl_stop(httpd_handle_t handle)
{
    httpd_stop(handle);
}
