#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_11__ {scalar_t__ maxsize; } ;
struct TYPE_10__ {int size; int /*<<< orphan*/  pos; int /*<<< orphan*/  flags; scalar_t__ data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PKT_FLAG_CORRUPT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int SANE_CHUNK_SIZE ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int FUNC5 (TYPE_2__*,scalar_t__,int) ; 
 int FUNC6 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC7(AVIOContext *s, AVPacket *pkt, int size)
{
    int64_t orig_pos   = pkt->pos; // av_grow_packet might reset pos
    int orig_size      = pkt->size;
    int ret;

    do {
        int prev_size = pkt->size;
        int read_size;

        /* When the caller requests a lot of data, limit it to the amount
         * left in file or SANE_CHUNK_SIZE when it is not known. */
        read_size = size;
        if (read_size > SANE_CHUNK_SIZE/10) {
            read_size = FUNC6(s, read_size);
            // If filesize/maxsize is unknown, limit to SANE_CHUNK_SIZE
            if (s->maxsize < 0)
                read_size = FUNC1(read_size, SANE_CHUNK_SIZE);
        }

        ret = FUNC2(pkt, read_size);
        if (ret < 0)
            break;

        ret = FUNC5(s, pkt->data + prev_size, read_size);
        if (ret != read_size) {
            FUNC4(pkt, prev_size + FUNC0(ret, 0));
            break;
        }

        size -= read_size;
    } while (size > 0);
    if (size > 0)
        pkt->flags |= AV_PKT_FLAG_CORRUPT;

    pkt->pos = orig_pos;
    if (!pkt->size)
        FUNC3(pkt);
    return pkt->size > orig_size ? pkt->size - orig_size : ret;
}