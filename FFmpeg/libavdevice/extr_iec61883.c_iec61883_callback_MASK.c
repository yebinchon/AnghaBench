#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iec61883_data {scalar_t__ packets; scalar_t__ max_packets; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; TYPE_1__* queue_last; TYPE_1__* queue_first; } ;
struct TYPE_4__ {int len; struct TYPE_4__* next; scalar_t__ buf; } ;
typedef  TYPE_1__ DVPacket ;

/* Variables and functions */
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(unsigned char *data, int length,
                             int complete, void *callback_data)
{
    struct iec61883_data *dv = callback_data;
    DVPacket *packet;
    int ret;

#if THREADS
    pthread_mutex_lock(&dv->mutex);
#endif

    if (dv->packets >= dv->max_packets) {
        FUNC1(NULL, AV_LOG_ERROR, "DV packet queue overrun, dropping.\n");
        ret = 0;
        goto exit;
    }

    packet = FUNC3(sizeof(*packet));
    if (!packet) {
        ret = -1;
        goto exit;
    }

    packet->buf = FUNC2(length + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!packet->buf) {
        FUNC0(packet);
        ret = -1;
        goto exit;
    }
    packet->len = length;

    FUNC4(packet->buf, data, length);
    FUNC5(packet->buf + length, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    if (dv->queue_first) {
        dv->queue_last->next = packet;
        dv->queue_last = packet;
    } else {
        dv->queue_first = packet;
        dv->queue_last = packet;
    }
    dv->packets++;

    ret = 0;

exit:
#if THREADS
    pthread_cond_broadcast(&dv->cond);
    pthread_mutex_unlock(&dv->mutex);
#endif
    return ret;
}