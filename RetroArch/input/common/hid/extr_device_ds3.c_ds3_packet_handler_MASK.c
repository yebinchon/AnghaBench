#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_5__ {int led_set; int /*<<< orphan*/  data; scalar_t__ pad; } ;
typedef  TYPE_1__ ds3_instance_t ;
typedef  int /*<<< orphan*/  ds3_control_packet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(void *data, uint8_t *packet, uint16_t size)
{
   ds3_instance_t *instance = (ds3_instance_t *)data;

   if(instance->pad && !instance->led_set)
   {
      FUNC1(instance);
      instance->led_set = true;
   }

   if(size > sizeof(ds3_control_packet))
   {
      FUNC0("[ds3]: Expecting packet to be %d but was %d\n",
         sizeof(ds3_control_packet), size);
      return;
   }

   FUNC4(instance->data, packet, size);
   FUNC3(instance);
   FUNC2(instance);
}