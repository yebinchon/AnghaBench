
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ httpd_handle_t ;


 int register_basic_handlers (scalar_t__) ;
 scalar_t__ test_httpd_start () ;

httpd_handle_t start_tests(void)
{
    httpd_handle_t hd = test_httpd_start();
    if (hd) {
        register_basic_handlers(hd);
    }
    return hd;
}
