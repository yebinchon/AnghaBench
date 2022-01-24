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
struct TYPE_8__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_10__ {int in_chunk_size; void* out_chunk_size; int /*<<< orphan*/ * nb_prev_pkt; int /*<<< orphan*/ * prev_pkt; int /*<<< orphan*/  stream; int /*<<< orphan*/  is_input; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ RTMPPacket ;
typedef  TYPE_3__ RTMPContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;
    int ret;

    if (pkt->size < 4) {
        FUNC1(s, AV_LOG_ERROR,
               "Too short chunk size change packet (%d)\n",
               pkt->size);
        return AVERROR_INVALIDDATA;
    }

    if (!rt->is_input) {
        /* Send the same chunk size change packet back to the server,
         * setting the outgoing chunk size to the same as the incoming one. */
        if ((ret = FUNC2(rt->stream, pkt, rt->out_chunk_size,
                                        &rt->prev_pkt[1], &rt->nb_prev_pkt[1])) < 0)
            return ret;
        rt->out_chunk_size = FUNC0(pkt->data);
    }

    rt->in_chunk_size = FUNC0(pkt->data);
    if (rt->in_chunk_size <= 0) {
        FUNC1(s, AV_LOG_ERROR, "Incorrect chunk size %d\n",
               rt->in_chunk_size);
        return AVERROR_INVALIDDATA;
    }
    FUNC1(s, AV_LOG_DEBUG, "New incoming chunk size = %d\n",
           rt->in_chunk_size);

    return 0;
}