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
typedef  int /*<<< orphan*/  class_queue_t ;

/* Variables and functions */
#define  QP_MBUF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(class_queue_t *q, u_int32_t flow, u_int32_t *cnt, u_int32_t *len)
{
	switch (FUNC2(q)) {
	case QP_MBUF:
		FUNC1(q, flow, cnt, len);
		break;

	default:
		FUNC0(0);
		/* NOTREACHED */
	}
}