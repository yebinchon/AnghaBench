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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(
   int32_t *min_x0_io, int32_t *l0_io,
   int32_t min_x1, int32_t l1)
{
   int32_t min_x0;
   int32_t l0;
   int32_t max_x0;
   int32_t max_x1;

   FUNC3((*l0_io >= 0) && (l1 >= 0));

   min_x0 = *min_x0_io;
   l0 = *l0_io;

   max_x0 = FUNC0(min_x0, l0);
   max_x1 = min_x1 + l1;

   if (min_x0 < min_x1) {
      min_x0 = min_x1;
   }
   if (max_x0 > max_x1) {
      max_x0 = max_x1;
   }

   l0 = FUNC1(FUNC2(max_x0, min_x0), 0);

   *min_x0_io = (l0 == 0) ? min_x1 : min_x0;
   *l0_io = l0;
}