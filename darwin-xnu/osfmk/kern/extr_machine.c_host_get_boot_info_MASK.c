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
typedef  char const* kernel_boot_info_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/ * host_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/ * HOST_PRIV_NULL ; 
 int /*<<< orphan*/  KERNEL_BOOT_INFO_MAX ; 
 int /*<<< orphan*/  KERN_INVALID_HOST ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  realhost ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC3(
        host_priv_t         host_priv,
        kernel_boot_info_t  boot_info)
{
	const char *src = "";
	if (host_priv == HOST_PRIV_NULL)
		return (KERN_INVALID_HOST);

	FUNC0(host_priv == &realhost);

	/*
	 * Copy first operator string terminated by '\0' followed by
	 *	standardized strings generated from boot string.
	 */
	src = FUNC1(boot_info, KERNEL_BOOT_INFO_MAX);
	if (src != boot_info)
		(void) FUNC2(boot_info, src, KERNEL_BOOT_INFO_MAX);

	return (KERN_SUCCESS);
}