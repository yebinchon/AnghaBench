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
 int APE_MAX_VERSION ; 
 int APE_MIN_VERSION ; 
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char,char,char,char) ; 

__attribute__((used)) static int FUNC3(const AVProbeData * p)
{
    int version = FUNC0(p->buf+4);
    if (FUNC1(p->buf) != FUNC2('M', 'A', 'C', ' '))
        return 0;

    if (version < APE_MIN_VERSION || version > APE_MAX_VERSION)
        return AVPROBE_SCORE_MAX/4;

    return AVPROBE_SCORE_MAX;
}