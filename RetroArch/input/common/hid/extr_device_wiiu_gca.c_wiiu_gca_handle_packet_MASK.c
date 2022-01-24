#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  device_state; int /*<<< orphan*/  online; } ;
typedef  TYPE_1__ hid_wiiu_gca_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(void *data, uint8_t *buffer, size_t size)
{
   hid_wiiu_gca_instance_t *instance = (hid_wiiu_gca_instance_t *)data;
   if(!instance || !instance->online)
   {
      FUNC0("[gca]: instance null or not ready yet.\n");
      return;
   }

   if(size > sizeof(instance->device_state))
   {
      FUNC0("[gca]: packet size %d is too big for buffer of size %d\n",
         size, sizeof(instance->device_state));
      return;
   }

   FUNC1(instance->device_state, buffer, size);
   FUNC2(instance);
}