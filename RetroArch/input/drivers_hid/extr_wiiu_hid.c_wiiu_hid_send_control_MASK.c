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
struct TYPE_2__ {int /*<<< orphan*/  tx_size; int /*<<< orphan*/  tx_buffer; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ wiiu_adapter_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data, uint8_t *buf, size_t size)
{
   wiiu_adapter_t *adapter = (wiiu_adapter_t *)data;
   int32_t result;

   if (!adapter)
   {
      FUNC1("[hid]: send_control: bad adapter.\n");
      return;
   }

   FUNC4(adapter->tx_buffer, 0, adapter->tx_size);
   FUNC3(adapter->tx_buffer, buf, size);

   /* From testing, HIDWrite returns an error that looks like it's two
    * int16_t's bitmasked together. For example, one error I saw when trying
    * to write a single byte was 0xffe2ff97, which works out to -30 and -105.
    *  I have no idea what these mean. */
   result = FUNC0(adapter->handle, adapter->tx_buffer, adapter->tx_size, NULL, NULL);
   if (result < 0)
   {
      int16_t r1 =  (result & 0x0000FFFF);
      int16_t r2 = ((result & 0xFFFF0000) >> 16);
      FUNC2("[hid]: write failed: %08x (%d:%d)\n", result, r2, r1);
   }
}