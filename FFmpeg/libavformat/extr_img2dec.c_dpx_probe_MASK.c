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
typedef  char uint8_t ;
struct TYPE_3__ {char* buf; int buf_size; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const AVProbeData *p)
{
    const uint8_t *b = p->buf;
    int w, h;
    int is_big = (FUNC2(b) == FUNC2("SDPX"));

    if (p->buf_size < 0x304+8)
        return 0;
    w = is_big ? FUNC0(p->buf + 0x304) : FUNC1(p->buf + 0x304);
    h = is_big ? FUNC0(p->buf + 0x308) : FUNC1(p->buf + 0x308);
    if (w <= 0 || h <= 0)
        return 0;

    if (is_big || FUNC2(b) == FUNC2("XPDS"))
        return AVPROBE_SCORE_EXTENSION + 1;
    return 0;
}