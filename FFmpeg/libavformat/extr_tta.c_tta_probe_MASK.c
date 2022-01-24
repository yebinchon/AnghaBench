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
struct TYPE_3__ {int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char,char,char,char) ; 

__attribute__((used)) static int FUNC3(const AVProbeData *p)
{
    if (FUNC1(&p->buf[0]) == FUNC2('T', 'T', 'A', '1') &&
        (FUNC0(&p->buf[4]) == 1 || FUNC0(&p->buf[4]) == 2) &&
        FUNC0(&p->buf[6]) > 0 &&
        FUNC0(&p->buf[8]) > 0 &&
        FUNC1(&p->buf[10]) > 0)
        return AVPROBE_SCORE_EXTENSION + 30;
    return 0;
}