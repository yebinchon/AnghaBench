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

/* Variables and functions */
 int /*<<< orphan*/  co_active_handle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  co_switch ; 
 int /*<<< orphan*/  state_size ; 

__attribute__((used)) static void FUNC1( void )
{
	co_active_handle = FUNC0( state_size, (uintptr_t) &co_switch );
}