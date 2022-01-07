
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* kcdata_subtype_descriptor_t ;
struct TYPE_3__ {int kcs_flags; int kcs_elem_size; } ;


 int KCS_SUBTYPE_FLAGS_ARRAY ;

__attribute__((used)) static inline uint32_t
kcs_get_elem_size(kcdata_subtype_descriptor_t d)
{
 if (d->kcs_flags & KCS_SUBTYPE_FLAGS_ARRAY) {

  return (uint32_t)((d->kcs_elem_size & 0xffff) * ((d->kcs_elem_size & 0xffff0000)>>16));
 }
 return d->kcs_elem_size;
}
