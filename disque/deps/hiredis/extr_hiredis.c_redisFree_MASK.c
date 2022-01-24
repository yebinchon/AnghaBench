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
struct TYPE_4__ {scalar_t__ fd; int /*<<< orphan*/ * reader; int /*<<< orphan*/ * obuf; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(redisContext *c) {
    if (c->fd > 0)
        FUNC0(c->fd);
    if (c->obuf != NULL)
        FUNC3(c->obuf);
    if (c->reader != NULL)
        FUNC2(c->reader);
    FUNC1(c);
}