
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_handle_t ;


 int httpd_ssl_stop (int ) ;

__attribute__((used)) static void stop_webserver(httpd_handle_t server)
{

    httpd_ssl_stop(server);
}
