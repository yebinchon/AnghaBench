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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  user_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,uintptr_t,int /*<<< orphan*/ ) ; 

int
FUNC1(const user_addr_t ua, uintptr_t ka, vm_size_t nbytes)
{
	return (FUNC0(ua, ka, nbytes));
}