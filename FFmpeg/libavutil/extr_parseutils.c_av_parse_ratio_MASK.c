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
struct TYPE_4__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ AVRational ;

/* Variables and functions */
 TYPE_1__ FUNC0 (double,int) ; 
 int FUNC1 (double*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int FUNC4(AVRational *q, const char *str, int max,
                   int log_offset, void *log_ctx)
{
    char c;
    int ret;

    if (FUNC3(str, "%d:%d%c", &q->num, &q->den, &c) != 2) {
        double d;
        ret = FUNC1(&d, str, NULL, NULL,
                                     NULL, NULL, NULL, NULL,
                                     NULL, log_offset, log_ctx);
        if (ret < 0)
            return ret;
        *q = FUNC0(d, max);
    } else {
        FUNC2(&q->num, &q->den, q->num, q->den, max);
    }

    return 0;
}