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
struct TYPE_3__ {scalar_t__ buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char,char,char,char) ; 

__attribute__((used)) static int FUNC4(const AVProbeData *p)
{
    if (FUNC2(p->buf) != FUNC3('S','T','R','M'))
        return 0;

    if (!FUNC0(p->buf + 10) ||
        !FUNC0(p->buf + 12) || FUNC0(p->buf + 12) > 256 ||
        !FUNC1(p->buf + 16) || FUNC1(p->buf + 16) > 8*48000)
        return AVPROBE_SCORE_MAX / 8;

    return AVPROBE_SCORE_MAX / 3 * 2;
}