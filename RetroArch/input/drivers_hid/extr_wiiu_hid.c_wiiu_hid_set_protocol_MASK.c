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
struct TYPE_2__ {int /*<<< orphan*/  interface_index; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ wiiu_adapter_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t FUNC1(void *data, uint8_t protocol)
{
   wiiu_adapter_t *adapter = (wiiu_adapter_t *)data;
   if (!adapter)
      return -1;

   return FUNC0(adapter->handle,
         adapter->interface_index,
         protocol,
         NULL, NULL);
}