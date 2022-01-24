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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char,char,char,char) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (double) ; 

__attribute__((used)) static int FUNC5(const AVProbeData *p)
{
    double d;
    /* check file header */
    if (FUNC1(p->buf) != FUNC2('T', 'H', 'P', '\0'))
        return 0;

    d = FUNC3(FUNC0(p->buf + 16));
    if (d < 0.1 || d > 1000 || FUNC4(d))
        return AVPROBE_SCORE_MAX/4;

    return AVPROBE_SCORE_MAX;
}