#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  current_frame; int /*<<< orphan*/  is_cfr; } ;
typedef  TYPE_2__ VSContext ;
struct TYPE_7__ {TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  duration; } ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, int stream_idx, int64_t ts, int flags)
{
    VSContext *vs = s->priv_data;

    if (!vs->is_cfr)
        return FUNC0(ENOSYS);

    vs->current_frame = FUNC2(FUNC1(0, ts), s->streams[0]->duration);
    return 0;
}