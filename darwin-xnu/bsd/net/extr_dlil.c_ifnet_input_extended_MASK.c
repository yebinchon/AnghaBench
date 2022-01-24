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
struct mbuf {int dummy; } ;
struct ifnet_stat_increment_param {int dummy; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*,struct mbuf*,struct ifnet_stat_increment_param const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

errno_t
FUNC1(struct ifnet *ifp, struct mbuf *m_head,
    struct mbuf *m_tail, const struct ifnet_stat_increment_param *s)
{
	return (FUNC0(ifp, m_head, m_tail, s, TRUE, FALSE));
}