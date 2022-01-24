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
struct csrctl_args {int usersize; int /*<<< orphan*/  useraddr; } ;
typedef  int /*<<< orphan*/  csr_config_t ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(struct csrctl_args *args)
{
	csr_config_t config = 0;
	int error = 0;

	if (args->useraddr == 0 || args->usersize != sizeof(config))
		return EINVAL;

	error = FUNC1(&config);
	if (error)
		return error;

	return FUNC0(&config, args->useraddr, sizeof(config));
}