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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ps4 {int dummy; } ;
struct hidpad_ps4_data {int have_led; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hidpad_ps4_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(void *data,
      uint8_t *packet, uint16_t size)
{
   struct hidpad_ps4_data *device = (struct hidpad_ps4_data*)data;

   if (!device)
      return;

#if 0
   if (!device->have_led)
   {
      hidpad_ps4_send_control(device);
      device->have_led = true;
   }
#endif

   FUNC1(&device->data, &packet[2], sizeof(struct ps4));
}