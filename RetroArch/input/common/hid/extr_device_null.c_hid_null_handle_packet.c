
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_2__* pad; } ;
typedef TYPE_3__ hid_null_instance_t ;
struct TYPE_5__ {int data; TYPE_1__* iface; } ;
struct TYPE_4__ {int (* packet_handler ) (int ,int *,size_t) ;} ;


 int stub1 (int ,int *,size_t) ;

__attribute__((used)) static void hid_null_handle_packet(void *data, uint8_t *buffer, size_t size)
{
   hid_null_instance_t *instance = (hid_null_instance_t *)data;

   if (instance && instance->pad)
      instance->pad->iface->packet_handler(instance->pad->data, buffer, size);
}
