#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {int* data; int size; int /*<<< orphan*/  flags; int /*<<< orphan*/  stream_index; } ;
struct TYPE_10__ {TYPE_1__* st_video; } ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;
typedef  TYPE_2__ AvsFormat ;
typedef  int AvsBlockType ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(AVFormatContext * s, AVPacket * pkt,
                      AvsBlockType type, int sub_type, int size,
                      uint8_t * palette, int palette_size)
{
    AvsFormat *avs = s->priv_data;
    int ret;

    ret = FUNC1(pkt, size + palette_size);
    if (ret < 0)
        return ret;

    if (palette_size) {
        pkt->data[0] = 0x00;
        pkt->data[1] = 0x03;
        pkt->data[2] = palette_size & 0xFF;
        pkt->data[3] = (palette_size >> 8) & 0xFF;
        FUNC4(pkt->data + 4, palette, palette_size - 4);
    }

    pkt->data[palette_size + 0] = sub_type;
    pkt->data[palette_size + 1] = type;
    pkt->data[palette_size + 2] = size & 0xFF;
    pkt->data[palette_size + 3] = (size >> 8) & 0xFF;
    ret = FUNC3(s->pb, pkt->data + palette_size + 4, size - 4) + 4;
    if (ret < size) {
        FUNC2(pkt);
        return FUNC0(EIO);
    }

    pkt->size = ret + palette_size;
    pkt->stream_index = avs->st_video->index;
    if (sub_type == 0)
        pkt->flags |= AV_PKT_FLAG_KEY;

    return 0;
}