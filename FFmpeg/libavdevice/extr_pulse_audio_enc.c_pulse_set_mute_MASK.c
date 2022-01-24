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
typedef  int /*<<< orphan*/  pa_operation ;
struct TYPE_5__ {int /*<<< orphan*/  mute; int /*<<< orphan*/  stream; int /*<<< orphan*/  ctx; int /*<<< orphan*/  mainloop; } ;
typedef  TYPE_1__ PulseData ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pulse_context_result ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(PulseData *s)
{
    pa_operation *op;
    FUNC2(s->mainloop);
    op = FUNC0(s->ctx, FUNC1(s->stream),
                                        s->mute, pulse_context_result, s);
    return FUNC3(s, op, "pa_context_set_sink_input_mute");
}