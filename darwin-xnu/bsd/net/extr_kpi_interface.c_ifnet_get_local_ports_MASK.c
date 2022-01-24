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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFNET_GET_LOCAL_PORTS_WILDCARDOK ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

errno_t
FUNC1(ifnet_t ifp, u_int8_t *bitfield)
{
	u_int32_t flags = IFNET_GET_LOCAL_PORTS_WILDCARDOK;
	return (FUNC0(ifp, PF_UNSPEC, flags,
	    bitfield));
}