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
typedef  TYPE_1__ AVProbeData ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const AVProbeData *p)
{
    AVIOContext pb;
    int ret = 0;
    int size = 0;

    if (p->buf_size < 2 || p->buf[0] != '-' || p->buf[1] != '-')
        return 0;

    FUNC0(&pb, p->buf, p->buf_size, 0, NULL, NULL, NULL, NULL);

    ret = (FUNC1(&pb, &size, "--", NULL) >= 0) ? AVPROBE_SCORE_MAX : 0;

    return ret;
}