#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int64_t FUNC4(AVIOContext *s, AVBPrint *bp)
{
    int64_t ret;

    FUNC1(bp);
    ret = FUNC3(s, bp);
    if (ret < 0)
        return ret;

    if (!FUNC2(bp))
        return FUNC0(ENOMEM);

    return bp->len;
}