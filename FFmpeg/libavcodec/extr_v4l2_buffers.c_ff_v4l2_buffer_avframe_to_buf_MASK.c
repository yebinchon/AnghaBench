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
typedef  int /*<<< orphan*/  V4L2Buffer ;
struct TYPE_4__ {int /*<<< orphan*/  pts; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(const AVFrame *frame, V4L2Buffer *out)
{
    FUNC1(out, frame->pts);

    return FUNC0(frame, out);
}