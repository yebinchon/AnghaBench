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
 int /*<<< orphan*/  APPLE_IF_FAM_LOOPBACK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  lo_attach_proto ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)
{
	int error;

	/* Register protocol registration functions */
	if ((error = FUNC1(PF_INET,
	    APPLE_IF_FAM_LOOPBACK, lo_attach_proto, NULL)) != 0)
		FUNC0("proto_register_plumber failed for AF_INET "
		    "error=%d\n", error);

	if ((error = FUNC1(PF_INET6,
	    APPLE_IF_FAM_LOOPBACK, lo_attach_proto, NULL)) != 0)
		FUNC0("proto_register_plumber failed for AF_INET6 "
		    "error=%d\n", error);
}