
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int nProperties; } ;
typedef TYPE_1__* RealDTEntry ;
typedef int DeviceTreeNodeProperty ;


 int * next_prop (int *) ;

__attribute__((used)) static RealDTEntry
skipProperties(RealDTEntry entry)
{
 DeviceTreeNodeProperty *prop;
 unsigned int k;

 if (entry == ((void*)0) || entry->nProperties == 0) {
  return ((void*)0);
 } else {
  prop = (DeviceTreeNodeProperty *) (entry + 1);
  for (k = 0; k < entry->nProperties; k++) {
   prop = next_prop(prop);
  }
 }
 return ((RealDTEntry) prop);
}
