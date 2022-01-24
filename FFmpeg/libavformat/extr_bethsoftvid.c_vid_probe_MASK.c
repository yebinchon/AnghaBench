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
 scalar_t__ FUNC1 (char,char,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const AVProbeData *p)
{
    // little-endian VID tag, file starts with "VID\0"
    if (FUNC0(p->buf) != FUNC1('V', 'I', 'D', 0))
        return 0;

    if (p->buf[4] != 2)
        return AVPROBE_SCORE_MAX / 4;

    return AVPROBE_SCORE_MAX;
}