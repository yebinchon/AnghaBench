
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int kcs_elem_offset; } ;


 int bsd_post_tests_count ;
 TYPE_1__* kc_xnupost_test_def ;
 int kc_xnupost_test_def_count ;
 int kcs_get_elem_size (TYPE_1__*) ;
 int kernel_post_tests_count ;

uint32_t
xnupost_get_estimated_testdata_size(void)
{
 uint32_t total_tests = bsd_post_tests_count + kernel_post_tests_count;
 uint32_t elem_size = kc_xnupost_test_def[kc_xnupost_test_def_count - 1].kcs_elem_offset +
                      kcs_get_elem_size(&kc_xnupost_test_def[kc_xnupost_test_def_count - 1]);
 uint32_t retval = 1024;
 retval += 1024;
 retval += (total_tests * elem_size);

 return retval;
}
