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
typedef  int /*<<< orphan*/  cothread_t ;

/* Variables and functions */
 int /*<<< orphan*/  co_active_handle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(cothread_t handle) {
  register cothread_t co_previous_handle = co_active_handle;
  FUNC0(co_active_handle = handle, co_previous_handle);
}