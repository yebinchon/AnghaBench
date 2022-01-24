#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_5__ {int /*<<< orphan*/  analog_state; } ;
typedef  TYPE_1__ gca_pad_t ;
struct TYPE_6__ {int axis; } ;
typedef  TYPE_2__ axis_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,TYPE_2__*) ; 

__attribute__((used)) static int16_t FUNC2(void *data, unsigned axis)
{
   axis_data axis_data;

   gca_pad_t *pad = (gca_pad_t *)data;

   FUNC1(axis, &axis_data);

   if(!pad || axis_data.axis >= 4)
      return 0;

   return FUNC0(pad->analog_state, &axis_data);
}