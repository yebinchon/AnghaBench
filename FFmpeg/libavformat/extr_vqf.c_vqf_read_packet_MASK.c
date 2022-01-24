#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int frame_bit_len; int remaining_bits; int last_frame_bits; } ;
typedef  TYPE_1__ VqfContext ;
struct TYPE_10__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int duration; int* data; scalar_t__ stream_index; int /*<<< orphan*/  pos; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVPacket *pkt)
{
    VqfContext *c = s->priv_data;
    int ret;
    int size = (c->frame_bit_len - c->remaining_bits + 7)>>3;

    if (FUNC1(pkt, size+2) < 0)
        return FUNC0(EIO);

    pkt->pos          = FUNC4(s->pb);
    pkt->stream_index = 0;
    pkt->duration     = 1;

    pkt->data[0] = 8 - c->remaining_bits; // Number of bits to skip
    pkt->data[1] = c->last_frame_bits;
    ret = FUNC3(s->pb, pkt->data+2, size);

    if (ret != size) {
        FUNC2(pkt);
        return FUNC0(EIO);
    }

    c->last_frame_bits = pkt->data[size+1];
    c->remaining_bits  = (size << 3) - c->frame_bit_len + c->remaining_bits;

    return size+2;
}