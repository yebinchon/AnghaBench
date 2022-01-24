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
struct TYPE_6__ {int current_section; } ;
typedef  TYPE_1__ ASSSplitContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

ASSSplitContext *FUNC3(const char *buf)
{
    ASSSplitContext *ctx = FUNC1(sizeof(*ctx));
    if (!ctx)
        return NULL;
    ctx->current_section = -1;
    if (FUNC0(ctx, buf) < 0) {
        FUNC2(ctx);
        return NULL;
    }
    return ctx;
}