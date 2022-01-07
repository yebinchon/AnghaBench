
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* kcdata_subtype_descriptor_t ;
struct TYPE_3__ {int kcs_elem_size; } ;



__attribute__((used)) static inline int
kcs_set_elem_size(kcdata_subtype_descriptor_t d, uint32_t size, uint32_t count)
{
 if (count > 1) {

  if (size > 0xffff || count > 0xffff)
   return -1;
  d->kcs_elem_size = ((count & 0xffff) << 16 | (size & 0xffff));
 }
 else
 {
  d->kcs_elem_size = size;
 }
 return 0;
}
