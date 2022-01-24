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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {int side_data_elems; scalar_t__ size; TYPE_1__* side_data; int /*<<< orphan*/ * data; TYPE_3__* buf; } ;
struct TYPE_7__ {scalar_t__ size; int type; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FF_MERGE_MARKER ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC8(AVPacket *pkt){
    if(pkt->side_data_elems){
        AVBufferRef *buf;
        int i;
        uint8_t *p;
        uint64_t size= pkt->size + 8LL + AV_INPUT_BUFFER_PADDING_SIZE;
        AVPacket old= *pkt;
        for (i=0; i<old.side_data_elems; i++) {
            size += old.side_data[i].size + 5LL;
        }
        if (size > INT_MAX)
            return FUNC0(EINVAL);
        buf = FUNC2(size);
        if (!buf)
            return FUNC0(ENOMEM);
        pkt->buf = buf;
        pkt->data = p = buf->data;
        pkt->size = size - AV_INPUT_BUFFER_PADDING_SIZE;
        FUNC6(&p, old.data, old.size);
        for (i=old.side_data_elems-1; i>=0; i--) {
            FUNC6(&p, old.side_data[i].data, old.side_data[i].size);
            FUNC4(&p, old.side_data[i].size);
            *p++ = old.side_data[i].type | ((i==old.side_data_elems-1)*128);
        }
        FUNC5(&p, FF_MERGE_MARKER);
        FUNC1(p-pkt->data == pkt->size);
        FUNC7(p, 0, AV_INPUT_BUFFER_PADDING_SIZE);
        FUNC3(&old);
        pkt->side_data_elems = 0;
        pkt->side_data = NULL;
        return 1;
    }
    return 0;
}