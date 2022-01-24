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
struct TYPE_5__ {int run; scalar_t__ save; int run2; int lossy; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ RICEContext ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int INT_MIN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static inline int FUNC4(RICEContext *r)
{
    int v;
    if (r->run > 0) { /* we have zero run */
        r->run--;
        FUNC3(r, 0);
        return 0;
    }
    if (FUNC0(&r->gb) < 1)
        return INT_MIN;
    v = FUNC1(&r->gb, FUNC2(r), INT_MAX, 0);
    FUNC3(r, (v + 1) >> 1);
    if (!v) {
        if (r->save >= 0) {
            r->run = FUNC1(&r->gb, 2, INT_MAX, 0);
            if (r->run > 1)
                r->save += r->run + 1;
            else
                r->save -= 3;
        } else
            r->run2++;
    } else {
        v = ((v >> 1) + r->lossy) ^ -(v & 1);
        if (r->run2 > 0) {
            if (r->run2 > 2)
                r->save += r->run2;
            else
                r->save -= 3;
            r->run2 = 0;
        }
    }

    return v;
}