
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int driver_handle; TYPE_1__* driver; } ;
typedef TYPE_2__ wiiu_adapter_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_4__ {int (* handle_packet ) (int ,int *,int ) ;} ;


 scalar_t__ ADAPTER_STATE_READING ;
 scalar_t__ ADAPTER_STATE_READY ;
 int RARCH_ERR (char*) ;
 int report_hid_error (char*,TYPE_2__*,int ) ;
 int stub1 (int ,int *,int ) ;

__attribute__((used)) static void wiiu_hid_read_loop_callback(uint32_t handle, int32_t error,
              uint8_t *buffer, uint32_t buffer_size, void *userdata)
{
   wiiu_adapter_t *adapter = (wiiu_adapter_t *)userdata;
   if (!adapter)
   {
      RARCH_ERR("read_loop_callback: bad userdata\n");
      return;
   }

   if (error < 0)
   {
      report_hid_error("async read failed", adapter, error);
   }

   if (adapter->state == ADAPTER_STATE_READING)
   {
      adapter->state = ADAPTER_STATE_READY;

      if (error == 0)
      {
         adapter->driver->handle_packet(adapter->driver_handle,
            buffer, buffer_size);
      }
   }
}
