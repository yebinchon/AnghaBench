#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  vmaf_score; int /*<<< orphan*/  error; } ;
typedef  TYPE_1__ LIBVMAFContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC6(void *ctx)
{
    LIBVMAFContext *s = (LIBVMAFContext *) ctx;
    FUNC1(s);
    if (!s->error) {
        FUNC0(ctx, AV_LOG_INFO, "VMAF score: %f\n",s->vmaf_score);
    } else {
        FUNC4(&s->lock);
        FUNC2(&s->cond);
        FUNC5(&s->lock);
    }
    FUNC3(NULL);
    return NULL;
}