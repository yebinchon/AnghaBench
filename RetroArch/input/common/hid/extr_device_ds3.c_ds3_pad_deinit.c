
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slot; } ;
typedef TYPE_1__ ds3_instance_t ;
struct TYPE_5__ {int (* get_name ) (TYPE_1__*) ;} ;


 TYPE_3__ ds3_pad_connection ;
 int input_autoconfigure_disconnect (int ,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void ds3_pad_deinit(void *data)
{
   ds3_instance_t *pad = (ds3_instance_t *)data;
   if(pad) {
      input_autoconfigure_disconnect(pad->slot, ds3_pad_connection.get_name(pad));
   }
}
