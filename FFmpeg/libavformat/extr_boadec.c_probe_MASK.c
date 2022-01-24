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
struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(const AVProbeData *p)
{
    if (p->buf_size < 2096)
        return 0;
    if (   FUNC1(p->buf     ) != 1
        || FUNC1(p->buf +  8) > 100000
        || FUNC1(p->buf + 12) > 8
        || FUNC1(p->buf + 16) != 2096
        ||!FUNC1(p->buf + 21)
        || FUNC0(p->buf + 25) != 2096
        || FUNC1(p->buf + 48) % FUNC1(p->buf + 21)
        )
        return 0;
    return AVPROBE_SCORE_EXTENSION;
}