
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;



__attribute__((used)) static inline vm_offset_t *
get_backup_ptr(vm_size_t elem_size,
               vm_offset_t *element)
{
 return (vm_offset_t *) ((vm_offset_t)element + elem_size - sizeof(vm_offset_t));
}
