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
struct TYPE_5__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  mainloop; } ;
typedef  TYPE_1__ PulseData ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  pulse_stream_result ; 

__attribute__((used)) static int FUNC3(PulseData *s, int pause)
{
    pa_operation *op;
    FUNC1(s->mainloop);
    op = FUNC0(s->stream, pause, pulse_stream_result, s);
    return FUNC2(s, op, "pa_stream_cork");
}