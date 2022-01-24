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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct TYPE_10__ {int size; scalar_t__* data; int /*<<< orphan*/  stream_index; } ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;
struct TYPE_8__ {scalar_t__ cache; int* len; size_t block_size; int block_type; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ PayloadContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(PayloadContext *qdm, AVStream *st, AVPacket *pkt)
{
    int to_copy, n, res, include_csum;
    uint8_t *p, *csum_pos = NULL;

    /* create packet to hold subpkts into a superblock */
    FUNC2(qdm->cache > 0);
    for (n = 0; n < 0x80; n++)
        if (qdm->len[n] > 0)
            break;
    FUNC2(n < 0x80);

    if ((res = FUNC3(pkt, qdm->block_size)) < 0)
        return res;
    FUNC5(pkt->data, 0, pkt->size);
    pkt->stream_index  = st->index;
    p                  = pkt->data;

    /* superblock header */
    if (qdm->len[n] > 0xff) {
        *p++ = qdm->block_type | 0x80;
        FUNC0(p, qdm->len[n]);
        p   += 2;
    } else {
        *p++ = qdm->block_type;
        *p++ = qdm->len[n];
    }
    if ((include_csum = (qdm->block_type == 2 || qdm->block_type == 4))) {
        csum_pos = p;
        p       += 2;
    }

    /* subpacket data */
    to_copy = FUNC1(qdm->len[n], pkt->size - (p - pkt->data));
    FUNC4(p, qdm->buf[n], to_copy);
    qdm->len[n] = 0;

    /* checksum header */
    if (include_csum) {
        unsigned int total = 0;
        uint8_t *q;

        for (q = pkt->data; q < &pkt->data[qdm->block_size]; q++)
            total += *q;
        FUNC0(csum_pos, (uint16_t) total);
    }

    return 0;
}