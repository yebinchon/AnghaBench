
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef int vm_size_t ;


 long INDEX_ZDLUT (int ) ;
 int * k_zone ;
 scalar_t__* k_zone_dlut ;

__attribute__((used)) static __inline zone_t
get_zone_dlut(vm_size_t size)
{
 long dindex = INDEX_ZDLUT(size);
 int zindex = (int)k_zone_dlut[dindex];
 return (k_zone[zindex]);
}
