#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVPacketSideDataType { ____Placeholder_AVPacketSideDataType } AVPacketSideDataType ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 unsigned int AV_INPUT_BUFFER_PADDING_SIZE ; 
 unsigned int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

uint8_t *FUNC3(AVPacket *pkt, enum AVPacketSideDataType type,
                                 int size)
{
    int ret;
    uint8_t *data;

    if ((unsigned)size > INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE)
        return NULL;
    data = FUNC1(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!data)
        return NULL;

    ret = FUNC2(pkt, type, data, size);
    if (ret < 0) {
        FUNC0(&data);
        return NULL;
    }

    return data;
}