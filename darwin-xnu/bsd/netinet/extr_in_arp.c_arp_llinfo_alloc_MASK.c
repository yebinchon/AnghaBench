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
typedef  scalar_t__ uint32_t ;
struct llinfo_arp {int /*<<< orphan*/  la_holdq; } ;

/* Variables and functions */
 int M_WAITOK ; 
 int /*<<< orphan*/  QP_MBUF ; 
 int /*<<< orphan*/  Q_DROPHEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ arp_maxhold ; 
 int /*<<< orphan*/  FUNC1 (struct llinfo_arp*,int) ; 
 int /*<<< orphan*/  llinfo_arp_zone ; 
 struct llinfo_arp* FUNC2 (int /*<<< orphan*/ ) ; 
 struct llinfo_arp* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct llinfo_arp *
FUNC4(int how)
{
	struct llinfo_arp *la;

	la = (how == M_WAITOK) ? FUNC2(llinfo_arp_zone) :
	    FUNC3(llinfo_arp_zone);
	if (la != NULL) {
		FUNC1(la, sizeof (*la));
		/*
		 * The type of queue (Q_DROPHEAD) here is just a hint;
		 * the actual logic that works on this queue performs
		 * a head drop, details in arp_llinfo_addq().
		 */
		FUNC0(&la->la_holdq, Q_DROPHEAD, (arp_maxhold == 0) ?
		    (uint32_t)-1 : arp_maxhold, QP_MBUF);
	}

	return (la);
}