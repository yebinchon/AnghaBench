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
typedef  int /*<<< orphan*/  uint32_t ;
struct mbuf {int dummy; } ;
struct in_ifaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ,struct in_ifaddr*) ; 
 struct mbuf* FUNC1 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC2(struct mbuf *m, uint32_t ifindex, struct in_ifaddr *ia)
{
	struct mbuf *tmp_mbuf = m;

	while (tmp_mbuf) {
		FUNC0(tmp_mbuf, ifindex, ia);
		tmp_mbuf = FUNC1(tmp_mbuf);
	}
}