
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int probed; } ;
typedef TYPE_1__ in_dev_t ;


 TYPE_1__* get_dev (int) ;
 char* strchr (char const*,char) ;

const char *in_get_dev_name(int dev_id, int must_be_active, int skip_pfix)
{
 const char *name, *tmp;
 in_dev_t *dev;

 dev = get_dev(dev_id);
 if (dev == ((void*)0))
  return ((void*)0);

 if (must_be_active && !dev->probed)
  return ((void*)0);

 name = dev->name;
 if (name == ((void*)0) || !skip_pfix)
  return name;


 tmp = strchr(name, ':');
 if (tmp != ((void*)0))
  name = tmp + 1;

 return name;
}
