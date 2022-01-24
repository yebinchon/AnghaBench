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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  av_buffer_default_free ; 

int FUNC2(AVPacket *pkt, uint8_t *data, int size)
{
    if (size >= INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE)
        return FUNC0(EINVAL);

    pkt->buf = FUNC1(data, size + AV_INPUT_BUFFER_PADDING_SIZE,
                                av_buffer_default_free, NULL, 0);
    if (!pkt->buf)
        return FUNC0(ENOMEM);

    pkt->data = data;
    pkt->size = size;

    return 0;
}