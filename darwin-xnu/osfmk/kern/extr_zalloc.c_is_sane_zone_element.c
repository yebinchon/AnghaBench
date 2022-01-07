
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef scalar_t__ vm_offset_t ;
typedef int boolean_t ;
struct TYPE_4__ {int elem_size; } ;


 int TRUE ;
 int is_sane_zone_ptr (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static inline boolean_t
is_sane_zone_element(zone_t zone,
                     vm_offset_t addr)
{

 if (addr == 0)
  return TRUE;
 return is_sane_zone_ptr(zone, addr, zone->elem_size);
}
