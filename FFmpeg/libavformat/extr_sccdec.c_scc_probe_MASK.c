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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(const AVProbeData *p)
{
    char buf[18];
    FFTextReader tr;

    FUNC0(&tr, p->buf, p->buf_size);

    while (FUNC1(&tr) == '\r' || FUNC1(&tr) == '\n')
        FUNC2(&tr);

    FUNC3(&tr, buf, sizeof(buf));

    if (!FUNC4(buf, "Scenarist_SCC V1.0", 18))
        return AVPROBE_SCORE_MAX;

    return 0;
}