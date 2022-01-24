#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* dst; } ;
struct TYPE_6__ {TYPE_2__** outputs; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out = FUNC1(inlink, in);
    if (!out)
        return FUNC0(ENOMEM);
    return FUNC2(outlink, out);
}