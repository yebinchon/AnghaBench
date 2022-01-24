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
typedef  int /*<<< orphan*/  caddr_t ;
typedef  TYPE_1__* buf_t ;
struct TYPE_5__ {scalar_t__ b_resid; int /*<<< orphan*/  b_bcount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(buf_t bp) {
        caddr_t baddr;
  
        if (FUNC0(bp, &baddr) == 0) {
	        FUNC2(baddr, bp->b_bcount);
		FUNC1(bp);
	}
	bp->b_resid = 0;
}