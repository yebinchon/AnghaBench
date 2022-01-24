#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uint8_t ;
struct libusb_adapter {int /*<<< orphan*/  send_control_lock; int /*<<< orphan*/  send_control_buffer; } ;
typedef  int /*<<< orphan*/  size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data,
      uint8_t* data_buf, size_t size)
{
   struct libusb_adapter *adapter = (struct libusb_adapter*)data;

   if (!adapter)
      return;

   FUNC3(adapter->send_control_lock);

   if (FUNC2(adapter->send_control_buffer) >= size + sizeof(size))
   {
      FUNC1(adapter->send_control_buffer, &size, sizeof(size));
      FUNC1(adapter->send_control_buffer, data_buf, size);
   }
   else
   {
      FUNC0("adapter write buffer is full, cannot write send control\n");
   }
   FUNC4(adapter->send_control_lock);
}