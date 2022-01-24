#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__** streams; int /*<<< orphan*/  pb; TYPE_3__* priv_data; } ;
struct TYPE_11__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {int* pkt_sizes; int size_entries_used; int /*<<< orphan*/  packets; int /*<<< orphan*/  size_buffer_size; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int /*<<< orphan*/  block_align; } ;
typedef  TYPE_3__ CAFContext ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int* FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, AVPacket *pkt)
{
    CAFContext *caf = s->priv_data;

    FUNC3(s->pb, pkt->data, pkt->size);
    if (!s->streams[0]->codecpar->block_align) {
        void *pkt_sizes = caf->pkt_sizes;
        int i, alloc_size = caf->size_entries_used + 5;
        if (alloc_size < 0) {
            caf->pkt_sizes = NULL;
        } else {
            caf->pkt_sizes = FUNC1(caf->pkt_sizes,
                                             &caf->size_buffer_size,
                                             alloc_size);
        }
        if (!caf->pkt_sizes) {
            FUNC2(pkt_sizes);
            return FUNC0(ENOMEM);
        }
        for (i = 4; i > 0; i--) {
            unsigned top = pkt->size >> i * 7;
            if (top)
                caf->pkt_sizes[caf->size_entries_used++] = 128 | top;
        }
        caf->pkt_sizes[caf->size_entries_used++] = pkt->size & 127;
        caf->packets++;
    }
    return 0;
}