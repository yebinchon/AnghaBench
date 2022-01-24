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
struct ifnet_llreach_info {int dummy; } ;
typedef  int /*<<< orphan*/ * ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,struct ifnet_llreach_info*) ; 

__attribute__((used)) static errno_t
FUNC2(ifnet_t ifp, int af,
    struct ifnet_llreach_info *iflri)
{
	if (ifp == NULL || iflri == NULL)
		return (EINVAL);

	FUNC0(af == AF_INET || af == AF_INET6);

	return (FUNC1(ifp, af, iflri));
}