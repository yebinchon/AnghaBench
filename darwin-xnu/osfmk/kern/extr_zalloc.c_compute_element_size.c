
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;



__attribute__((used)) static vm_size_t
compute_element_size(vm_size_t requested_size)
{
 vm_size_t element_size = requested_size;


 vm_size_t minimum_element_size = sizeof(vm_offset_t) * 2;
 if (element_size < minimum_element_size)
  element_size = minimum_element_size;





 element_size = ((element_size-1) + sizeof(vm_offset_t)) -
        ((element_size-1) % sizeof(vm_offset_t));

 return element_size;
}
