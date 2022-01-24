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
struct TYPE_3__ {int buf_size; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char,char,char,char) ; 
 int WV_BLOCK_LIMIT ; 

__attribute__((used)) static int FUNC3(const AVProbeData *p)
{
    /* check file header */
    if (p->buf_size <= 32)
        return 0;
    if (FUNC1(&p->buf[0]) == FUNC2('w', 'v', 'p', 'k') &&
        FUNC1(&p->buf[4]) >= 24 &&
        FUNC1(&p->buf[4]) <= WV_BLOCK_LIMIT &&
        FUNC0(&p->buf[8]) >= 0x402 &&
        FUNC0(&p->buf[8]) <= 0x410)
        return AVPROBE_SCORE_MAX;
    else
        return 0;
}