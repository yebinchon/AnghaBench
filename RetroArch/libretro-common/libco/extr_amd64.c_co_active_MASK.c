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
typedef  int /*<<< orphan*/ * cothread_t ;

/* Variables and functions */
 int /*<<< orphan*/  co_active_buffer ; 
 int /*<<< orphan*/ * co_active_handle ; 

cothread_t FUNC0(void)
{
  if (!co_active_handle)
     co_active_handle = &co_active_buffer;
  return co_active_handle;
}