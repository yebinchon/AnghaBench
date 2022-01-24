#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fq_flags; scalar_t__ fq_bytes; } ;
typedef  TYPE_1__ fq_t ;

/* Variables and functions */
 int FQF_NEW_FLOW ; 
 int FQF_OLD_FLOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  flowq_cache ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC3(fq_t *fq)
{
	FUNC0(FUNC1(fq));
	FUNC0(!(fq->fq_flags & (FQF_NEW_FLOW | FQF_OLD_FLOW)));
	FUNC0(fq->fq_bytes == 0);
	FUNC2(flowq_cache, fq);
}