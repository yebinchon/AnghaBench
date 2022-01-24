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
struct TYPE_10__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int stream_index; } ;
struct TYPE_8__ {int cur_stream; int audio_packets; int num_streams; size_t current_packet; int /*<<< orphan*/ * packet_sizes; int /*<<< orphan*/  packet_sizes_alloc; } ;
typedef  TYPE_1__ PMPContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, AVPacket *pkt)
{
    PMPContext *pmp = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret = 0;
    int i;

    if (FUNC4(pb))
        return AVERROR_EOF;
    if (pmp->cur_stream == 0) {
        int num_packets;
        pmp->audio_packets = FUNC5(pb);

        if (!pmp->audio_packets) {
            FUNC3(s, AV_LOG_ERROR, "No audio packets.\n");
            return AVERROR_INVALIDDATA;
        }

        num_packets = (pmp->num_streams - 1) * pmp->audio_packets + 1;
        FUNC7(pb, 8);
        pmp->current_packet = 0;
        FUNC1(&pmp->packet_sizes,
                       &pmp->packet_sizes_alloc,
                       num_packets * sizeof(*pmp->packet_sizes));
        if (!pmp->packet_sizes_alloc) {
            FUNC3(s, AV_LOG_ERROR, "Cannot (re)allocate packet buffer\n");
            return FUNC0(ENOMEM);
        }
        for (i = 0; i < num_packets; i++)
            pmp->packet_sizes[i] = FUNC6(pb);
    }
    ret = FUNC2(pb, pkt, pmp->packet_sizes[pmp->current_packet]);
    if (ret >= 0) {
        ret = 0;
        pkt->stream_index = pmp->cur_stream;
    }
    if (pmp->current_packet % pmp->audio_packets == 0)
        pmp->cur_stream = (pmp->cur_stream + 1) % pmp->num_streams;
    pmp->current_packet++;
    return ret;
}