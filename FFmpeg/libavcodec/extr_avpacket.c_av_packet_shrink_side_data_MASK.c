#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPacketSideDataType { ____Placeholder_AVPacketSideDataType } AVPacketSideDataType ;
struct TYPE_5__ {int side_data_elems; TYPE_1__* side_data; } ;
struct TYPE_4__ {int type; int size; } ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 

int FUNC1(AVPacket *pkt, enum AVPacketSideDataType type,
                               int size)
{
    int i;

    for (i = 0; i < pkt->side_data_elems; i++) {
        if (pkt->side_data[i].type == type) {
            if (size > pkt->side_data[i].size)
                return FUNC0(ENOMEM);
            pkt->side_data[i].size = size;
            return 0;
        }
    }
    return FUNC0(ENOENT);
}