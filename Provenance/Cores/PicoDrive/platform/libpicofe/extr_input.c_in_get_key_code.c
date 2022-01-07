
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key_count; scalar_t__* key_names; } ;
typedef TYPE_1__ in_dev_t ;


 TYPE_1__* get_dev (int) ;
 int menu_last_used_dev ;
 scalar_t__ strcasecmp (scalar_t__,char const*) ;

int in_get_key_code(int dev_id, const char *key_name)
{
 in_dev_t *dev;
 int i;

 if (dev_id < 0)
  dev_id = menu_last_used_dev;

 dev = get_dev(dev_id);
 if (dev == ((void*)0))
  return -1;

 if (dev->key_names == ((void*)0))
  return -1;

 for (i = 0; i < dev->key_count; i++)
  if (dev->key_names[i] && strcasecmp(dev->key_names[i], key_name) == 0)
   return i;

 return -1;
}
