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
typedef  int uint16_t ;
struct TYPE_3__ {char* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(const AVProbeData *p)
{
    /* check file header */
    uint16_t magic = FUNC0(p->buf);
    if ((magic == 0x0B8D || magic == 0x0C0D || magic == 0x0C8D) &&
        p->buf[2] == 'S' && p->buf[3] == 'O' &&
        p->buf[4] == 'L' && p->buf[5] == 0)
        return AVPROBE_SCORE_MAX;
    else
        return 0;
}