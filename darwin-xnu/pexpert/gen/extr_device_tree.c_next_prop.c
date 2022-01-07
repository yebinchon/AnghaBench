
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; } ;
typedef TYPE_1__ DeviceTreeNodeProperty ;


 scalar_t__ os_add3_overflow (uintptr_t,int ,int,uintptr_t*) ;
 int panic (char*,TYPE_1__*,int ) ;

__attribute__((used)) static inline DeviceTreeNodeProperty*
next_prop(DeviceTreeNodeProperty* prop)
{
 uintptr_t next_addr;
 if (os_add3_overflow((uintptr_t)prop, prop->length, sizeof(DeviceTreeNodeProperty) + 3, &next_addr))
  panic("Device tree property overflow: prop %p, length 0x%x\n", prop, prop->length);
 next_addr &= ~(3ULL);
 return (DeviceTreeNodeProperty*)next_addr;
}
