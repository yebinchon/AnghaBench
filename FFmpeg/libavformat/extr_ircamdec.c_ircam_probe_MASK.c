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
 scalar_t__ FUNC0 (int*) ; 

__attribute__((used)) static int FUNC1(const AVProbeData *p)
{
    if ((p->buf[0] == 0x64 && p->buf[1] == 0xA3 && p->buf[3] == 0x00 &&
         p->buf[2] >=    1 && p->buf[2] <= 4) ||
        (p->buf[3] == 0x64 && p->buf[2] == 0xA3 && p->buf[0] == 0x00 &&
         p->buf[1] >=    1 && p->buf[1] <= 3) &&
        FUNC0(p->buf + 4) && FUNC0(p->buf + 8))
        return AVPROBE_SCORE_MAX / 4 * 3;
    return 0;
}