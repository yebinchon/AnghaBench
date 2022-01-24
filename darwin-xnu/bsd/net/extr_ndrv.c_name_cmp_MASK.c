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
struct ifnet {int dummy; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct ifnet *ifp, char *q)
{	char *r;
	int len;
	char buf[IFNAMSIZ];

	r = buf;
	len = FUNC5(FUNC0(ifp));
	FUNC4(r, FUNC0(ifp), IFNAMSIZ);
	r += len;
	FUNC3(FUNC1(ifp), r, IFNAMSIZ-(r-buf));
#if NDRV_DEBUG
	printf("Comparing %s, %s\n", buf, q);
#endif
	return(FUNC6(buf, q, IFNAMSIZ));
}