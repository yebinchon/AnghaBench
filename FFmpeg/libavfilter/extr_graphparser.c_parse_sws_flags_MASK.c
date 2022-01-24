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
struct TYPE_4__ {int /*<<< orphan*/  scale_sws_opts; } ;
typedef  TYPE_1__ AVFilterGraph ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC5 (char const*,char) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC7(const char **buf, AVFilterGraph *graph)
{
    char *p = FUNC5(*buf, ';');

    if (FUNC6(*buf, "sws_flags=", 10))
        return 0;

    if (!p) {
        FUNC2(graph, AV_LOG_ERROR, "sws_flags not terminated with ';'.\n");
        return FUNC0(EINVAL);
    }

    *buf += 4;  // keep the 'flags=' part

    FUNC1(&graph->scale_sws_opts);
    if (!(graph->scale_sws_opts = FUNC3(p - *buf + 1)))
        return FUNC0(ENOMEM);
    FUNC4(graph->scale_sws_opts, *buf, p - *buf + 1);

    *buf = p + 1;
    return 0;
}