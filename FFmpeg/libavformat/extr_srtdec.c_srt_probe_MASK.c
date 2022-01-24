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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  buf_size; int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  FFTextReader ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,int*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char**,int) ; 

__attribute__((used)) static int FUNC7(const AVProbeData *p)
{
    int v;
    char buf[64], *pbuf;
    FFTextReader tr;

    FUNC1(&tr, p->buf, p->buf_size);

    while (FUNC2(&tr) == '\r' || FUNC2(&tr) == '\n')
        FUNC3(&tr);

    /* Check if the first non-empty line is a number. We do not check what the
     * number is because in practice it can be anything.
     * Also, that number can be followed by random garbage, so we can not
     * unfortunately check that we only have a number. */
    if (FUNC0(&tr, buf, sizeof(buf)) < 0 ||
        FUNC6(buf, &pbuf, 10) < 0 || pbuf == buf)
        return 0;

    /* Check if the next line matches a SRT timestamp */
    if (FUNC0(&tr, buf, sizeof(buf)) < 0)
        return 0;
    pbuf = buf;
    if (buf[0] == '-')
        pbuf++;
    if (pbuf[0] >= '0' && pbuf[0] <= '9' && FUNC5(buf, " --> ")
        && FUNC4(buf, "%*d:%*d:%*d%*1[,.]%*d --> %*d:%*d:%*d%*1[,.]%d", &v) == 1)
        return AVPROBE_SCORE_MAX;

    return 0;
}