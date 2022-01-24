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
struct TYPE_3__ {int buf_size; char* buf; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int AVPROBE_SCORE_MAX ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(const AVProbeData *p)
{
    GetBitContext gb;
    int len, xmin, xmax, ymin, ymax;

    if(p->buf_size < 15)
        return 0;

    /* check file header */
    if (   FUNC0(p->buf) != FUNC0("CWS")
        && FUNC0(p->buf) != FUNC0("FWS"))
        return 0;

    if (   FUNC0(p->buf) == FUNC0("CWS")
        && p->buf[3] <= 20)
        return AVPROBE_SCORE_MAX / 4 + 1;

    if (FUNC3(&gb, p->buf + 3, p->buf_size - 3) < 0)
        return 0;

    FUNC4(&gb, 40);
    len = FUNC1(&gb, 5);
    if (!len)
        return 0;
    xmin = FUNC2(&gb, len);
    xmax = FUNC2(&gb, len);
    ymin = FUNC2(&gb, len);
    ymax = FUNC2(&gb, len);
    if (xmin || ymin || !xmax || !ymax)
        return 0;

    if (p->buf[3] >= 20 || xmax < 16 || ymax < 16)
        return AVPROBE_SCORE_MAX / 4;

    return AVPROBE_SCORE_EXTENSION + 1;
}