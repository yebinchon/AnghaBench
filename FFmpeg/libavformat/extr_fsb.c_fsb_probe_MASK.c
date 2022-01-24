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
struct TYPE_3__ {int* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*,char*,int) ; 

__attribute__((used)) static int FUNC2(const AVProbeData *p)
{
    if (FUNC1(p->buf, "FSB", 3) || p->buf[3] - '0' < 1 || p->buf[3] - '0' > 5)
        return 0;
    if (FUNC0(p->buf + 4) != 1)
        return 0;
    return AVPROBE_SCORE_MAX;
}