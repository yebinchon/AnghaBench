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
struct iec61883_data {scalar_t__ type; int /*<<< orphan*/  raw1394; int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  channel; int /*<<< orphan*/  input_port; int /*<<< orphan*/  output_port; int /*<<< orphan*/  node; TYPE_1__* queue_first; TYPE_1__* dv_demux; int /*<<< orphan*/  iec61883_dv; int /*<<< orphan*/  mpeg_demux; int /*<<< orphan*/  iec61883_mpeg2; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  receive_task_thread; scalar_t__ thread_loop; } ;
struct TYPE_6__ {struct iec61883_data* priv_data; } ;
struct TYPE_5__ {struct TYPE_5__* buf; struct TYPE_5__* next; } ;
typedef  TYPE_1__ DVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ CONFIG_MPEGTS_DEMUXER ; 
 scalar_t__ IEC61883_HDV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *context)
{
    struct iec61883_data *dv = context->priv_data;

#if THREADS
    dv->thread_loop = 0;
    pthread_join(dv->receive_task_thread, NULL);
    pthread_cond_destroy(&dv->cond);
    pthread_mutex_destroy(&dv->mutex);
#endif

    if (CONFIG_MPEGTS_DEMUXER && dv->type == IEC61883_HDV) {
        FUNC6(dv->iec61883_mpeg2);
        FUNC5(dv->iec61883_mpeg2);
        FUNC1(dv->mpeg_demux);
    } else {
        FUNC4(dv->iec61883_dv);
        FUNC3(dv->iec61883_dv);
        FUNC0(&dv->dv_demux);
    }
    while (dv->queue_first) {
        DVPacket *packet = dv->queue_first;
        dv->queue_first = packet->next;
        FUNC0(&packet->buf);
        FUNC0(&packet);
    }

    FUNC2(dv->raw1394, dv->node, dv->output_port,
                            FUNC11(dv->raw1394),
                            dv->input_port, dv->channel, dv->bandwidth);

    FUNC10(dv->raw1394);

    return 0;
}