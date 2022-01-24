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
typedef  int /*<<< orphan*/  Tube ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tubes ; 

__attribute__((used)) static Tube *
FUNC3(const char *name)
{
    int r;
    Tube *t = NULL;

    t = FUNC0(name);
    if (!t)
        return NULL;

    /* We want this global tube list to behave like "weak" refs, so don't
     * increment the ref count. */
    r = FUNC1(&tubes, t);
    if (!r)
        return FUNC2(t), (Tube *) 0;

    return t;
}