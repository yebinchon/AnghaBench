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
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  mbuf_traffic_class_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct mbuf *m, mbuf_traffic_class_t tc)
{
	u_int32_t val = FUNC0(tc);	/* just the val portion */

	return (FUNC2(m, FUNC1(val)));
}