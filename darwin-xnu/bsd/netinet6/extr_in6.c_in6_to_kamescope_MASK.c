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
struct sockaddr_in6 {int sin6_scope_id; int /*<<< orphan*/  sin6_addr; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sockaddr_in6*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sockaddr_in6*,int /*<<< orphan*/ *,struct ifnet*) ; 

__attribute__((used)) static int
FUNC4(struct sockaddr_in6 *sin6, struct ifnet *ifp)
{
	struct sockaddr_in6 tmp;
	int error, id;

	FUNC0(sin6 != NULL);
	tmp = *sin6;

	error = FUNC3(&tmp, &sin6->sin6_addr, ifp);
	if (error != 0)
		return (error);

	id = FUNC1(ifp, &tmp.sin6_addr);
	if (tmp.sin6_scope_id == 0)
		tmp.sin6_scope_id = id;
	else if (tmp.sin6_scope_id != id)
		return (EINVAL); /* scope ID mismatch. */

	error = FUNC2(&tmp.sin6_addr, &tmp, NULL, NULL, NULL);
	if (error != 0)
		return (error);

	tmp.sin6_scope_id = 0;
	*sin6 = tmp;
	return (0);
}