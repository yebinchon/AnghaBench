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
typedef  int /*<<< orphan*/  sa_family_t ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/  ifaddr_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

errno_t
FUNC1(ifnet_t interface, ifaddr_t **addresses,
    sa_family_t family)
{
	return (FUNC0(interface, addresses,
	    family, 0, M_NOWAIT, 0));
}