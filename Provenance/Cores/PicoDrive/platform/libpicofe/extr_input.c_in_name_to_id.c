
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int in_dev_count ;
 TYPE_1__* in_devices ;
 int lprintf (char*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;

int in_name_to_id(const char *dev_name)
{
 int i;

 for (i = 0; i < in_dev_count; i++)
  if (strcmp(dev_name, in_devices[i].name) == 0)
   break;

 if (i >= in_dev_count) {
  lprintf("input: in_name_to_id: no such device: %s\n", dev_name);
  return -1;
 }

 return i;
}
