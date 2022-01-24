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
struct sfb {int dummy; } ;
typedef  int /*<<< orphan*/  pktsched_pkt_t ;
typedef  int /*<<< orphan*/  class_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct sfb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC1(struct sfb *sp, class_queue_t *q, pktsched_pkt_t *pkt)
{
	FUNC0(sp, q, 0, FALSE, pkt);
}