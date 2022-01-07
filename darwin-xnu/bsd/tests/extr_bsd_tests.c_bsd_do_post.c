
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bsd_post_tests ;
 int bsd_post_tests_count ;
 int xnupost_run_tests (int ,int ) ;

int
bsd_do_post()
{
 return xnupost_run_tests(bsd_post_tests, bsd_post_tests_count);
}
