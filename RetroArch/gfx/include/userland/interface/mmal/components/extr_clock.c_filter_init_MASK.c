#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_4__ {void* length; void* last; } ;
typedef  TYPE_1__ FILTER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(FILTER_T *filter, uint32_t length)
{
   FUNC0(filter, 0, sizeof(*filter));
   filter->last = length - 1;
   filter->length = length;
}