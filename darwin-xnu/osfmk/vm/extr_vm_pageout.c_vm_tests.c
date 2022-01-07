
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vm_test_collapse_compressor () ;
 int vm_test_device_pager_transpose () ;
 int vm_test_kernel_object_fault () ;
 int vm_test_page_wire_overflow_panic () ;
 int vm_test_wire_and_extract () ;

void
vm_tests(void)
{
 vm_test_collapse_compressor();
 vm_test_wire_and_extract();
 vm_test_page_wire_overflow_panic();
 vm_test_kernel_object_fault();
 vm_test_device_pager_transpose();
}
