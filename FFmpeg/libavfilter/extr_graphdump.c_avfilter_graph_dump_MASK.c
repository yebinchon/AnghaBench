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
struct TYPE_5__ {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  AVFilterGraph ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 scalar_t__ AV_BPRINT_SIZE_COUNT_ONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

char *FUNC3(AVFilterGraph *graph, const char *options)
{
    AVBPrint buf;
    char *dump;

    FUNC1(&buf, 0, AV_BPRINT_SIZE_COUNT_ONLY);
    FUNC2(&buf, graph);
    FUNC1(&buf, buf.len + 1, buf.len + 1);
    FUNC2(&buf, graph);
    FUNC0(&buf, &dump);
    return dump;
}