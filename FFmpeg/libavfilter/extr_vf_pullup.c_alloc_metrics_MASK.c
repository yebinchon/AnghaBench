#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  metric_length; } ;
struct TYPE_5__ {void* vars; void* combs; void* diffs; } ;
typedef  TYPE_1__ PullupField ;
typedef  TYPE_2__ PullupContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 

__attribute__((used)) static int FUNC4(PullupContext *s, PullupField *f)
{
    f->diffs = FUNC2(FUNC1(s->metric_length, 16), sizeof(*f->diffs));
    f->combs = FUNC2(FUNC1(s->metric_length, 16), sizeof(*f->combs));
    f->vars  = FUNC2(FUNC1(s->metric_length, 16), sizeof(*f->vars));

    if (!f->diffs || !f->combs || !f->vars) {
        FUNC3(&f->diffs);
        FUNC3(&f->combs);
        FUNC3(&f->vars);
        return FUNC0(ENOMEM);
    }
    return 0;
}