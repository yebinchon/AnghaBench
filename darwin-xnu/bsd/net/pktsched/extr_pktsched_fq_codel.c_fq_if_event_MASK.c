#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fqs_ifq; } ;
typedef  TYPE_1__ fq_if_t ;
typedef  int cqev_t ;

/* Variables and functions */
#define  CLASSQ_EV_LINK_DOWN 129 
#define  CLASSQ_EV_LINK_UP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(fq_if_t *fqs, cqev_t ev)
{
	FUNC0(fqs->fqs_ifq);

	switch (ev) {
	case CLASSQ_EV_LINK_UP:
	case CLASSQ_EV_LINK_DOWN:
		FUNC1(fqs);
		break;
	default:
		break;
	}
}