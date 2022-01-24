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
typedef  int /*<<< orphan*/  gl2_renderchain_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 

__attribute__((used)) static bool FUNC1(void **renderchain_handle)
{
   gl2_renderchain_data_t *data = (gl2_renderchain_data_t *)FUNC0(1, sizeof(*data));

   if (!data)
      return false;

   *renderchain_handle = data;
   return true;
}