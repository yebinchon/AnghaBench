#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__** streams; } ;
struct TYPE_13__ {int nb_samples; int channels; int /*<<< orphan*/  pkt_duration; int /*<<< orphan*/  pkt_dts; int /*<<< orphan*/  format; int /*<<< orphan*/ * data; } ;
struct TYPE_12__ {int size; int /*<<< orphan*/  duration; int /*<<< orphan*/  dts; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int AV_WRITE_UNCODED_FRAME_QUERY ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *h, int stream_index,
                             AVFrame **frame, unsigned flags)
{
    AVPacket pkt;

    /* Planar formats are not supported yet. */
    if (flags & AV_WRITE_UNCODED_FRAME_QUERY)
        return FUNC2(h->streams[stream_index]->codecpar->format) ?
               FUNC0(EINVAL) : 0;

    pkt.data     = (*frame)->data[0];
    pkt.size     = (*frame)->nb_samples * FUNC1((*frame)->format) * (*frame)->channels;
    pkt.dts      = (*frame)->pkt_dts;
    pkt.duration = (*frame)->pkt_duration;
    return FUNC3(h, &pkt);
}