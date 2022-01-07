
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void config_userdata_free(void *ptr)
{
   if (ptr)
      free(ptr);
}
