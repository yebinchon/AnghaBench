
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bsd_post_tests ;
 int bsd_post_tests_count ;
 int * kernel_post_tests ;
 int kernel_post_tests_count ;
 int xnupost_reset_tests (int *,int ) ;

int
xnupost_reset_all_tests(void)
{
 xnupost_reset_tests(&bsd_post_tests[0], bsd_post_tests_count);
 xnupost_reset_tests(&kernel_post_tests[0], kernel_post_tests_count);
 return 0;
}
