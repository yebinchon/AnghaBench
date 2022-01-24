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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ifnet {int if_eflags; int /*<<< orphan*/  if_snd; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int IFEF_TXSTART ; 
 int /*<<< orphan*/  MBUF_SC_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

errno_t
FUNC1(struct ifnet *ifp, u_int32_t *pkts)
{
	errno_t err;

	if (ifp == NULL || pkts == NULL)
		err = EINVAL;
	else if (!(ifp->if_eflags & IFEF_TXSTART))
		err = ENXIO;
	else
		err = FUNC0(&ifp->if_snd, MBUF_SC_UNSPEC,
		    pkts, NULL);

	return (err);
}