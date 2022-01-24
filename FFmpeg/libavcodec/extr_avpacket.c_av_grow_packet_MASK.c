#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {unsigned int size; int /*<<< orphan*/ * data; TYPE_3__* buf; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int) ; 
 int FUNC3 (TYPE_3__**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC6(AVPacket *pkt, int grow_by)
{
    int new_size;
    FUNC1((unsigned)pkt->size <= INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE);
    if ((unsigned)grow_by >
        INT_MAX - (pkt->size + AV_INPUT_BUFFER_PADDING_SIZE))
        return FUNC0(ENOMEM);

    new_size = pkt->size + grow_by + AV_INPUT_BUFFER_PADDING_SIZE;
    if (pkt->buf) {
        size_t data_offset;
        uint8_t *old_data = pkt->data;
        if (pkt->data == NULL) {
            data_offset = 0;
            pkt->data = pkt->buf->data;
        } else {
            data_offset = pkt->data - pkt->buf->data;
            if (data_offset > INT_MAX - new_size)
                return FUNC0(ENOMEM);
        }

        if (new_size + data_offset > pkt->buf->size) {
            int ret = FUNC3(&pkt->buf, new_size + data_offset);
            if (ret < 0) {
                pkt->data = old_data;
                return ret;
            }
            pkt->data = pkt->buf->data + data_offset;
        }
    } else {
        pkt->buf = FUNC2(new_size);
        if (!pkt->buf)
            return FUNC0(ENOMEM);
        if (pkt->size > 0)
            FUNC4(pkt->buf->data, pkt->data, pkt->size);
        pkt->data = pkt->buf->data;
    }
    pkt->size += grow_by;
    FUNC5(pkt->data + pkt->size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    return 0;
}