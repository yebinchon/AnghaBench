#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int stack_ptr; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ SRTContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const) ; 

__attribute__((used)) static void FUNC5(SRTContext *s, const char c, int close)
{
    if (close) {
        int i = c ? FUNC2(s, c) : 0;
        if (i < 0)
            return;
        while (s->stack_ptr != i)
            FUNC1(s, FUNC3(s));
    } else if (FUNC4(s, c) < 0)
        FUNC0(s->avctx, AV_LOG_ERROR, "tag stack overflow\n");
}