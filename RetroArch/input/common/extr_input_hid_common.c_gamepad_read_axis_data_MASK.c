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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {scalar_t__ axis; int is_negative; } ;
typedef  TYPE_1__ axis_data ;

/* Variables and functions */
 scalar_t__ AXIS_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint32_t axis, axis_data *data)
{
   if(!data)
      return;

   data->axis = FUNC1(axis);
   data->is_negative = false;

   if(data->axis >= AXIS_INVALID)
   {
      data->axis = FUNC0(axis);
      data->is_negative = true;
   }
}