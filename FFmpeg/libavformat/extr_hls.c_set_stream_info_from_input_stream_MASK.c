#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct playlist {scalar_t__ is_id3_timestamped; } ;
struct TYPE_8__ {int num; int /*<<< orphan*/  den; } ;
struct TYPE_9__ {int pts_wrap_bits; TYPE_1__* internal; TYPE_2__ time_base; int /*<<< orphan*/  codecpar; } ;
struct TYPE_7__ {int need_context_update; } ;
typedef  TYPE_3__ AVStream ;

/* Variables and functions */
 int /*<<< orphan*/  MPEG_TIME_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVStream *st, struct playlist *pls, AVStream *ist)
{
    int err;

    err = FUNC0(st->codecpar, ist->codecpar);
    if (err < 0)
        return err;

    if (pls->is_id3_timestamped) /* custom timestamps via id3 */
        FUNC1(st, 33, 1, MPEG_TIME_BASE);
    else
        FUNC1(st, ist->pts_wrap_bits, ist->time_base.num, ist->time_base.den);

    st->internal->need_context_update = 1;

    return 0;
}