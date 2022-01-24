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
struct TYPE_3__ {int buf_size; int* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*,char*,int) ; 

__attribute__((used)) static int FUNC2(const AVProbeData *p)
{
    if (p->buf_size < 45 || FUNC1(p->buf, "1bit", 4) ||
        !FUNC0(p->buf + 36) || !p->buf[44] ||
        (p->buf[0] >= 0x10 && (FUNC0(p->buf + 20) < 0x80 || FUNC0(p->buf + 24) < 0x80)))
       return 0;
    return AVPROBE_SCORE_MAX;
}