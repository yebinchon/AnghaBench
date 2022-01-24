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
typedef  int /*<<< orphan*/  pa_operation ;
struct TYPE_4__ {int last_result; int /*<<< orphan*/  mainloop; } ;
typedef  TYPE_1__ PulseData ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(PulseData *s, pa_operation *op, const char *name)
{
    if (!op) {
        FUNC2(s->mainloop);
        FUNC0(s, AV_LOG_ERROR, "%s failed.\n", name);
        return AVERROR_EXTERNAL;
    }
    s->last_result = 2;
    while (s->last_result == 2)
        FUNC3(s->mainloop);
    FUNC1(op);
    FUNC2(s->mainloop);
    if (s->last_result != 0)
        FUNC0(s, AV_LOG_ERROR, "%s failed.\n", name);
    return s->last_result;
}