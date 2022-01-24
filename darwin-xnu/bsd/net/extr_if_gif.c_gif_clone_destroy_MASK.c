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
 int /*<<< orphan*/  IFF_UP ; 
 int FUNC0 (struct ifnet*) ; 
 int FUNC1 (struct ifnet*) ; 
 int FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(struct ifnet *ifp)
{
	int error = 0;

	error = FUNC0(ifp);
	if (error != 0) {
		FUNC4("gif_clone_destroy: gif remove failed %d\n", error);
		return (error);
	}

	error = FUNC2(ifp, 0, IFF_UP);
	if (error != 0) {
		FUNC4("gif_clone_destroy: ifnet_set_flags failed %d\n", error);
	}

	error = FUNC1(ifp);
	if (error != 0)
		FUNC3("gif_clone_destroy: ifnet_detach(%p) failed %d\n", ifp,
		    error);
	return (0);
}