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
struct TYPE_3__ {char* buf; int buf_size; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const AVProbeData *p)
{
    const char *ptr     = p->buf;
    const char *ptr_end = p->buf + p->buf_size;

    if (FUNC0(ptr) == 0xEFBBBF)
        ptr += 3; /* skip UTF-8 BOM */

    while (ptr < ptr_end) {
        while (FUNC2(*ptr))
            ptr++;
        if (*ptr != '#' && *ptr != '\n') {
            if (FUNC3(ptr))
                return AVPROBE_SCORE_EXTENSION + 1;
            return 0;
        }
        ptr += FUNC1(ptr);
    }
    return 0;
}