#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct in_multi {scalar_t__ inm_ifp; TYPE_1__* inm_ifma; } ;
struct TYPE_2__ {scalar_t__ ifma_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ int
FUNC2(const struct in_multi *inm)
{
	FUNC0(inm->inm_ifma != NULL);
	FUNC0(inm->inm_ifp == inm->inm_ifma->ifma_ifp);

	return (!FUNC1(inm->inm_ifp, 0));
}