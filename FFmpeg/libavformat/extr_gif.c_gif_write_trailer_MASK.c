#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  prev_pkt; int /*<<< orphan*/  have_end; } ;
typedef  TYPE_1__ GIFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  GIF_TRAILER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    GIFContext *gif = s->priv_data;
    AVIOContext *pb = s->pb;

    if (!gif->prev_pkt)
        return FUNC0(EINVAL);

    FUNC3(s, NULL);

    if (!gif->have_end)
        FUNC2(pb, GIF_TRAILER);
    FUNC1(&gif->prev_pkt);

    return 0;
}