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
typedef  scalar_t__ kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  kernproc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ bool FUNC1(kauth_cred_t cred)
{
#if CONFIG_MACF
	return (cred != proc_ucred(kernproc));
#else
#pragma unused(p)
	return false;
#endif // CONFIG_MACF
}