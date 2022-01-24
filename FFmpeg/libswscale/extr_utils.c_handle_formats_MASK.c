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
struct TYPE_4__ {scalar_t__ dstXYZ; scalar_t__ srcXYZ; int /*<<< orphan*/  dstFormat; int /*<<< orphan*/  srcFormat; int /*<<< orphan*/  dst0Alpha; int /*<<< orphan*/  src0Alpha; } ;
typedef  TYPE_1__ SwsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(SwsContext *c)
{
    c->src0Alpha |= FUNC1(&c->srcFormat);
    c->dst0Alpha |= FUNC1(&c->dstFormat);
    c->srcXYZ    |= FUNC2(&c->srcFormat);
    c->dstXYZ    |= FUNC2(&c->dstFormat);
    if (c->srcXYZ || c->dstXYZ)
        FUNC0(c);
}