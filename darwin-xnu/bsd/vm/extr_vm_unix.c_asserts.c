
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_min_kernel_address ;
typedef int vm_max_kernel_address ;


 int static_assert (int) ;

__attribute__((used)) static void asserts() {
 static_assert(sizeof(vm_min_kernel_address) == sizeof(unsigned long));
 static_assert(sizeof(vm_max_kernel_address) == sizeof(unsigned long));
}
