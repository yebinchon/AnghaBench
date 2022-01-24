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
struct ipsec_tag {scalar_t__ history_count; } ;

/* Variables and functions */
 struct ipsec_tag* FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,struct ipsec_tag*) ; 

void
FUNC2(
	struct mbuf *m)
{
	struct ipsec_tag	*itag;
	
	itag = FUNC0(m);
	if (itag) {
		itag->history_count = 0;
	}
	FUNC1(m, itag);
}