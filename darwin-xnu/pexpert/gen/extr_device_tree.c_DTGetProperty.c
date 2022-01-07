
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int nProperties; } ;
struct TYPE_6__ {unsigned int length; int name; } ;
typedef TYPE_1__ DeviceTreeNodeProperty ;
typedef TYPE_2__* DTEntry ;


 int kError ;
 int kSuccess ;
 TYPE_1__* next_prop (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char const*) ;

int
DTGetProperty(const DTEntry entry, const char *propertyName, void **propertyValue, unsigned int *propertySize)
{
 DeviceTreeNodeProperty *prop;
 unsigned int k;

 if (entry == ((void*)0) || entry->nProperties == 0) {
  return kError;
 } else {
  prop = (DeviceTreeNodeProperty *) (entry + 1);
  for (k = 0; k < entry->nProperties; k++) {
   if (strcmp(prop->name, propertyName) == 0) {
    *propertyValue = (void *) (((uintptr_t)prop)
      + sizeof(DeviceTreeNodeProperty));
    *propertySize = prop->length;
    return kSuccess;
   }
   prop = next_prop(prop);
  }
 }
 return kError;
}
