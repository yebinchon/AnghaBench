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
struct TYPE_9__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  queue_end; scalar_t__ queue; } ;
typedef  TYPE_1__ TTAMuxContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(AVFormatContext *s)
{
    TTAMuxContext *tta = s->priv_data;
    AVPacket pkt;

    while (tta->queue) {
        FUNC2(&tta->queue, &tta->queue_end, &pkt);
        FUNC1(s->pb, pkt.data, pkt.size);
        FUNC0(&pkt);
    }
}