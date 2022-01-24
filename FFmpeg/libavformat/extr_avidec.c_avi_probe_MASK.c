#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__** avi_headers ; 

__attribute__((used)) static int FUNC1(const AVProbeData *p)
{
    int i;

    /* check file header */
    for (i = 0; avi_headers[i][0]; i++)
        if (FUNC0(p->buf    ) == FUNC0(avi_headers[i]    ) &&
            FUNC0(p->buf + 8) == FUNC0(avi_headers[i] + 4))
            return AVPROBE_SCORE_MAX;

    return 0;
}