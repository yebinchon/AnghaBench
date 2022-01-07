
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pad; } ;
typedef TYPE_1__ ds4_instance_t ;


 int free (TYPE_1__*) ;
 int hid_pad_deregister (int ) ;

__attribute__((used)) static void ds4_free(void *data)
{
   ds4_instance_t *instance = (ds4_instance_t *)data;

   if(instance) {
      hid_pad_deregister(instance->pad);
      free(instance);
   }
}
