#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct libusb_adapter {size_t* data; size_t endpoint_in_max_size; size_t slot; int /*<<< orphan*/  endpoint_in; int /*<<< orphan*/  handle; int /*<<< orphan*/  send_control_lock; int /*<<< orphan*/  endpoint_out; int /*<<< orphan*/  send_control_buffer; int /*<<< orphan*/  quitting; TYPE_1__* hid; } ;
typedef  int /*<<< orphan*/  send_command_size ;
struct TYPE_2__ {int /*<<< orphan*/ * slots; } ;
typedef  TYPE_1__ libusb_hid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,size_t,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,size_t*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *data)
{
   uint8_t send_command_buf[4096];
   struct libusb_adapter *adapter = (struct libusb_adapter*)data;
   libusb_hid_t *hid              = adapter ? adapter->hid : NULL;

   if (!adapter)
      return;

   while (!adapter->quitting)
   {
      size_t send_command_size;
      int tmp;
      int report_number;
      int size = 0;

      FUNC4(adapter->send_control_lock);
      if (FUNC1(adapter->send_control_buffer)
            >= sizeof(send_command_size))
      {
         FUNC0(adapter->send_control_buffer,
               &send_command_size, sizeof(send_command_size));

         if (FUNC1(adapter->send_control_buffer)
               >= sizeof(send_command_size))
         {
            FUNC0(adapter->send_control_buffer,
                  send_command_buf, send_command_size);
            FUNC2(adapter->handle,
                  adapter->endpoint_out, send_command_buf,
                  send_command_size, &tmp, 1000);
         }
      }
      FUNC5(adapter->send_control_lock);

      FUNC2(adapter->handle,
            adapter->endpoint_in, &adapter->data[1],
            adapter->endpoint_in_max_size, &size, 1000);

      if (adapter && hid && hid->slots && size)
         FUNC3(&hid->slots[adapter->slot], adapter->slot,
               adapter->data, size+1);
   }
}