
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int online; } ;
typedef TYPE_1__ hid_wiiu_gca_instance_t ;


 int free (TYPE_1__*) ;
 int wiiu_gca_unregister_pad (TYPE_1__*,int) ;

__attribute__((used)) static void wiiu_gca_free(void *data)
{
   hid_wiiu_gca_instance_t *instance = (hid_wiiu_gca_instance_t *)data;
   int i;

   if(instance)
   {
      instance->online = 0;

      for (i = 0; i < 4; i++)
         wiiu_gca_unregister_pad(instance, i);

      free(instance);
   }
}
