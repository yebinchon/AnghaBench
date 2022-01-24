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
typedef  int uint8_t ;
struct TYPE_3__ {int* buf; int buf_size; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 scalar_t__ FUNC0 (int const*) ; 
 int FUNC1 (int const) ; 

__attribute__((used)) static int FUNC2(const AVProbeData *p)
{
    const uint8_t *b = p->buf;

    if (   p->buf_size < 128
        || b[0] != 10
        || b[1] > 5
        || b[2] > 1
        || FUNC1(b[3]) != 1 || b[3] > 8
        || FUNC0(&b[4]) > FUNC0(&b[8])
        || FUNC0(&b[6]) > FUNC0(&b[10])
        || b[64])
        return 0;
    b += 73;
    while (++b < p->buf + 128)
        if (*b)
            return AVPROBE_SCORE_EXTENSION / 4;

    return AVPROBE_SCORE_EXTENSION + 1;
}