
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 int kernel_post_tests ;
 int kernel_post_tests_count ;
 int xnupost_list_tests (int ,int ) ;

kern_return_t
kernel_list_tests()
{
 return xnupost_list_tests(kernel_post_tests, kernel_post_tests_count);
}
