
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_module_data {unsigned int count; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ value_size; void* value; int key; } ;


 int ENOENT ;
 scalar_t__ strcmp (char const*,int ) ;

int
mac_find_module_data(struct mac_module_data *mmd, const char *key,
    void **valp, size_t *sizep)
{
 int error = ENOENT;
 unsigned int i;

 if (mmd != ((void*)0)) {
  for (i = 0; i < mmd->count; i++) {
   if (strcmp(key, mmd->data[i].key) == 0) {
    *valp = mmd->data[i].value;
    *sizep = (size_t)mmd->data[i].value_size;
    error = 0;
    break;
   }
  }
 }

 return (error);
}
